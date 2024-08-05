from django.db import models

class CustomerAddress(models.Model):
    Id = models.AutoField(primary_key=True)
    CustomerId = models.IntegerField()
    StreetId = models.IntegerField()
    AddressNumber = models.IntegerField()
    AdditionalAddressInformation = models.CharField(max_length=150, null=True, blank=True)
    PrimaryAddress = models.BooleanField(default=False)
    CreationDate = models.DateTimeField(auto_now_add=True)
    CreatedBy = models.IntegerField(null=True, blank=True)
    LastUpdateDate = models.DateTimeField(auto_now=True)
    UpdatedBy = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return f"{self.CustomerId} - {self.StreetId} - {self.AddressNumber}"
