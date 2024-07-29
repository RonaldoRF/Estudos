from django.db import models
from users.models import User

class Country(models.Model):
    #CountryCode = models.AutoField(primary_key=True)
    CountryName = models.CharField(max_length=100)
    IsoCode = models.CharField(max_length=3)
    CapitalCity = models.CharField(max_length=100, null=True, blank=True)
    Region = models.CharField(max_length=100, null=True, blank=True)
    Population = models.BigIntegerField(null=True, blank=True)
    AreaSqKm = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    CallingCode = models.CharField(max_length=5, null=True, blank=True)
    Currency = models.CharField(max_length=50, null=True, blank=True)
    TimeZone = models.CharField(max_length=50, null=True, blank=True)
    Latitude = models.DecimalField(max_digits=10, decimal_places=6, null=True, blank=True)
    Longitude = models.DecimalField(max_digits=10, decimal_places=6, null=True, blank=True)
    FlagUrl = models.CharField(max_length=255, null=True, blank=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='country_created', db_column='CreatedBy')
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='country_updated', db_column='UpdatedBy')

    def __str__(self):
        return self.CountryName
    
    class Meta:
    #    managed = False
        db_table = 'Country'
