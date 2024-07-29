from django.db import models
from users.models import User
from state.models import State

class City(models.Model):
    #CityCode = models.AutoField(primary_key=True)
    CityName = models.CharField(max_length=100)
    Population = models.BigIntegerField()
    AreaSqKm = models.DecimalField(max_digits=10, decimal_places=2)
    latitude = models.DecimalField(max_digits=10, decimal_places=6)
    longitude = models.DecimalField(max_digits=10, decimal_places=6)
    StateCode = models.ForeignKey(State, on_delete=models.CASCADE, db_column='StateCode')
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='cities_created', db_column='CreatedBy')
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, related_name='cities_updated', db_column='UpdatedBy')
    
    def __str__(self):
        return self.CityName
    
    class Meta:
    #    managed = False
        db_table = 'City'
