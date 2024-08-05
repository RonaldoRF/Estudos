from django.db import models

class ProfilesRoles(models.Model):
    Id = models.AutoField(primary_key=True)
    ProfileId = models.IntegerField(unique=True)
    RoleId = models.IntegerField(unique=True)
    IsActive = models.BooleanField(default=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)
    
    def __str__(self):
        return f"ProfileId: {self.ProfileId}, RoleId: {self.RoleId}"
