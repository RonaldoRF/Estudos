from django.db import models

class Status(models.Model):
    Id = models.AutoField(primary_key=True)
    Name = models.CharField(max_length=50, unique=True)
    Description = models.TextField(null=True, blank=True)
    #IsActive = models.BooleanField(default=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return self.Name
