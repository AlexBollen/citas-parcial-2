from django.db import models
from django.utils import timezone


class Doctor(models.Model):
    first_name = models.CharField(max_length=120)
    last_name = models.CharField(max_length=120)
    specialty = models.CharField(max_length=150, blank=True)
    email = models.EmailField(blank=True, null=True)
    phone = models.CharField(max_length=50, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    total_bonus = models.DecimalField(max_digits=10, decimal_places=2, default=0)

    class Meta:
        ordering = ["last_name", "first_name"]

    def __str__(self):
        return f"{self.first_name} {self.last_name}"


class Patient(models.Model):
    first_name = models.CharField(max_length=120)
    last_name = models.CharField(max_length=120)
    email = models.EmailField(blank=True, null=True)
    phone = models.CharField(max_length=50, blank=True)
    address = models.CharField(max_length=255, blank=True)
    date_of_birth = models.DateField(null=True, blank=True)
    gender = models.CharField(max_length=50, blank=True)
    insurance = models.CharField(max_length=200, blank=True)
    emergency_contact = models.CharField(max_length=200, blank=True)
    medical_history = models.TextField(blank=True)
    allergies = models.TextField(blank=True)
    current_medications = models.TextField(blank=True)
    notes = models.TextField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["last_name", "first_name"]

    def __str__(self):
        return f"{self.first_name} {self.last_name}"


class Appointment(models.Model):
    STATUS_CHOICES = [
        ("scheduled", "Scheduled"),
        ("completed", "Completed"),
        ("cancelled", "Cancelled"),
    ]
    patient = models.ForeignKey(
        Patient, on_delete=models.CASCADE, related_name="appointments"
    )
    doctor = models.ForeignKey(
        Doctor, on_delete=models.CASCADE, related_name="appointments"
    )
    scheduled_at = models.DateTimeField()
    duration_minutes = models.PositiveIntegerField(default=30)
    reason = models.CharField(max_length=255, blank=True)
    notes = models.TextField(blank=True)
    status = models.CharField(
        max_length=20, choices=STATUS_CHOICES, default="scheduled"
    )
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["-scheduled_at"]

    def __str__(self):
        return f"Appt: {self.patient} with {self.doctor} at {self.scheduled_at}"


class FollowUp(models.Model):
    original_appointment = models.ForeignKey(
        Appointment, on_delete=models.CASCADE, related_name="followups"
    )
    patient = models.ForeignKey(
        Patient, on_delete=models.CASCADE, related_name="followups"
    )
    doctor = models.ForeignKey(
        Doctor, on_delete=models.CASCADE, related_name="followups"
    )
    scheduled_at = models.DateTimeField()
    notes = models.TextField(blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Seguimiento: {self.patient} dia {self.scheduled_at} con {self.doctor}"


class Bonus(models.Model):
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE, related_name="bonuses")
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    awarded_at = models.DateTimeField(default=timezone.now)
    reason = models.TextField(blank=True)

    def __str__(self):
        return f"Bonificacion {self.amount} a {self.doctor} dia {self.awarded_at}"
