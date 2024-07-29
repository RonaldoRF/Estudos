from django.db import models

class User(models.Model):
    Email = models.EmailField(unique=True)
    PasswordHash = models.CharField(max_length=255)
    Role = models.ForeignKey()
    IsActive = models.BooleanField(default=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return self.Email
    
    class Meta:
    #    managed = False
        db_table = 'Users'
