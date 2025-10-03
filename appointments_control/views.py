from rest_framework import viewsets, status
from rest_framework.decorators import action, api_view, permission_classes
from rest_framework.response import Response
from django.conf import settings
from .models import Doctor, Patient, Appointment, FollowUp, Bonus
from .serializers import (
    DoctorSerializer,
    PatientSerializer,
    AppointmentSerializer,
    FollowUpSerializer,
)
from django.utils import timezone
from rest_framework.permissions import AllowAny
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Count


class DoctorViewSet(viewsets.ModelViewSet):
    queryset = Doctor.objects.all()
    serializer_class = DoctorSerializer
    http_method_names = [
        "get",
        "post",
        "put",
        "patch",
    ]


class PatientViewSet(viewsets.ModelViewSet):
    queryset = Patient.objects.all()
    serializer_class = PatientSerializer
    http_method_names = [
        "get",
        "post",
        "put",
        "patch",
    ]


class AppointmentViewSet(viewsets.ModelViewSet):
    queryset = Appointment.objects.all()
    serializer_class = AppointmentSerializer

    @action(detail=True, methods=["post"])
    def mark_completed(self, request, pk=None):
        appt = self.get_object()
        appt.status = "completed"
        appt.save()
        return Response(self.serializer_class(appt).data)


class FollowUpViewSet(viewsets.ModelViewSet):
    queryset = FollowUp.objects.all()
    serializer_class = FollowUpSerializer


@api_view(["POST"])
@permission_classes([AllowAny])
@csrf_exempt
def award_bonuses_view(request):
    secret = request.headers.get("X-CRON-SECRET") or request.data.get("secret")
    if secret != settings.SECRET_KEY and secret != getattr(
        settings, "CRON_SECRET", None
    ):
        return Response({"detail": "Unauthorized"}, status=status.HTTP_401_UNAUTHORIZED)

    now = timezone.now()
    weekday = now.isoweekday()
    monday = (now - timezone.timedelta(days=weekday - 1)).replace(
        hour=0, minute=0, second=0, microsecond=0
    )

    from django.db.models import Q

    appts = Appointment.objects.filter(
        scheduled_at__gte=monday, scheduled_at__lte=now, status="completed"
    )
    doctors = Doctor.objects.annotate(
        patient_count=Count(
            "appointments__patient", filter=Q(appointments__in=appts), distinct=True
        )
    ).filter(patient_count__gt=50)

    awarded = []
    BONUS_AMOUNT = getattr(settings, "BONUS_AMOUNT", 100.00)
    for doc in doctors:
        bonus = Bonus.objects.create(
            doctor=doc,
            amount=BONUS_AMOUNT,
            reason=f"More than 50 unique patients since {monday.date()}",
        )
        doc.total_bonus += BONUS_AMOUNT
        doc.save(update_fields=["total_bonus"])
        awarded.append(
            {
                "doctor_id": doc.id,
                "name": str(doc),
                "patient_count": doc.patient_count,
                "amount": str(BONUS_AMOUNT),
            }
        )

    return Response({"awarded": awarded, "from": monday, "to": now})
