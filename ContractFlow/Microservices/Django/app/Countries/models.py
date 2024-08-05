from django.db import models

class Country(models.Model):
    Id = models.AutoField(primary_key=True)
    Name = models.CharField(max_length=100, unique=True)
    ISOCode = models.CharField(max_length=3)
    CapitalCity = models.CharField(max_length=100, null=True, blank=True)
    Region = models.CharField(max_length=100, null=True, blank=True)
    Population = models.BigIntegerField(null=True, blank=True)
    AreaSqKm = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    CallingCode = models.CharField(max_length=5, null=True, blank=True)
    Currency = models.CharField(max_length=50, null=True, blank=True)
    TimeZone = models.CharField(max_length=50, null=True, blank=True)
    Latitude = models.DecimalField(max_digits=10, decimal_places=6, null=True, blank=True)
    Longitude = models.DecimalField(max_digits=10, decimal_places=6, null=True, blank=True)
    FlagURL = models.URLField(max_length=255, null=True, blank=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return self.Name
