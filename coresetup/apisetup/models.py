from django.db import models

# Create your models here.


class Products(models.Model):
    p_name = models.CharField(max_length=200)
    description = models.CharField(max_length=500)


# class Users(models.Model):
    # email = models.CharField(max_length=200)
    # password = models.CharField(max_length=200)
    # phone = models.CharField(max_length=200)
    # address = models.CharField(max_length=200)
    # state = models.CharField(max_length=200)
    # city = models.CharField(max_length=200)
    # zipcode = models.CharField(max_length=200)
