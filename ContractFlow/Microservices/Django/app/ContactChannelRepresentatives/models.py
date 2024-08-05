from django.db import models

class ContactChannelRepresentatives(models.Model):
    Id = models.AutoField(primary_key=True)
    CustomerId = models.IntegerField()
    RepresentativeId = models.IntegerField()
    ContactName = models.CharField(max_length=100)
    ContactChannelTypeId = models.IntegerField()
    ContactValue = models.CharField(max_length=120)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return self.ContactName
