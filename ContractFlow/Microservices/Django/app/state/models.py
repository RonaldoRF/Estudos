from django.db import models
from users.models import User
from country.models import Country

class State(models.Model):
#    StateCode = models.AutoField(primary_key=True)
    StateName = models.CharField(max_length=100)
    Abbreviation = models.CharField(max_length=2, null=True, blank=True)
    CapitalCity = models.CharField(max_length=100, null=True, blank=True)
    Region = models.CharField(max_length=100, null=True, blank=True)
    Population = models.BigIntegerField(null=True, blank=True)
    AreaSqKm = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    Latitude = models.DecimalField(max_digits=10, decimal_places=6, null=True, blank=True)
    Longitude = models.DecimalField(max_digits=10, decimal_places=6, null=True, blank=True)
    CountryCode = models.ForeignKey(Country, on_delete=models.CASCADE, db_column='CountryCode')
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='state_created', db_column='CreatedBy')
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='state_updated', db_column='UpdatedBy')

    def __str__(self):
        return self.StateName
    
    class Meta:
    #    managed = False
        db_table = 'State'
