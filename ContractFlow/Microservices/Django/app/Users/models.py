from django.db import models
from Profiles.models import Profiles
#from .models import Users

class Users(models.Model):
    Id = models.AutoField(primary_key=True)
    Email = models.CharField(max_length=100, unique=True)
    PasswordHash = models.CharField(max_length=255)
    #ProfileId = models.IntegerField()
    ProfileId = models.ForeignKey(Profiles, on_delete=models.SET(0), null=False),
    IsActive = models.BooleanField(default=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    #CreatedBy = models.ForeignKey(Users, on_delete=models.SET_NULL, null=True, related_name='CreatedBy')
    LastUpdateDate = models.DateTimeField(auto_now=True)
    #UpdatedBy = models.ForeignKey(Users, on_delete=models.SET_NULL, null=True, related_name='UpdatedBy')
    
    def __str__(self):
        return self.Email

