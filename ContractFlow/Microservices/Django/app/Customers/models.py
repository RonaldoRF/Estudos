from django.db import models

class Customer(models.Model):
    Id = models.AutoField(primary_key=True)
    Name = models.CharField(max_length=100)
    ServiceStartDate = models.DateTimeField(auto_now_add=True)
    StatusID = models.IntegerField(null=True, blank=True)
    ServiceSubcategoryId = models.IntegerField(null=True, blank=True)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return self.Name
