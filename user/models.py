from django.db import models

from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    phone = models.CharField(max_length=15)  # Ошибка 2: Не импортирован models
    birth_date = models.DateField(null=True)

    class Meta:
        db_table = 'custom_users'