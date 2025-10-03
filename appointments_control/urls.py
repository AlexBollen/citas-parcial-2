from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import (
    DoctorViewSet,
    PatientViewSet,
    AppointmentViewSet,
    FollowUpViewSet,
    award_bonuses_view,
)

router = DefaultRouter()
router.register(r"doctors", DoctorViewSet, basename="doctor")
router.register(r"patients", PatientViewSet, basename="patient")
router.register(r"appointments", AppointmentViewSet, basename="appointment")
router.register(r"followups", FollowUpViewSet, basename="followup")

urlpatterns = [
    path("", include(router.urls)),
    # path("cron/award-bonuses/", award_bonuses_view, name="award-bonuses"),
]
