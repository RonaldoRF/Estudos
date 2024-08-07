# Generated by Django 5.0.7 on 2024-07-30 04:34

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='State',
            fields=[
                ('Id', models.AutoField(primary_key=True, serialize=False)),
                ('Name', models.CharField(max_length=100)),
                ('Abbreviation', models.CharField(blank=True, max_length=2, null=True)),
                ('CapitalCity', models.CharField(blank=True, max_length=100, null=True)),
                ('Region', models.CharField(blank=True, max_length=100, null=True)),
                ('Population', models.BigIntegerField(blank=True, null=True)),
                ('AreaSqKm', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True)),
                ('Latitude', models.DecimalField(blank=True, decimal_places=6, max_digits=10, null=True)),
                ('Longitude', models.DecimalField(blank=True, decimal_places=6, max_digits=10, null=True)),
                ('CountryId', models.IntegerField(blank=True, null=True)),
                ('CreationDate', models.DateTimeField(auto_now_add=True)),
                ('CreatedBy', models.IntegerField(blank=True, null=True)),
                ('LastUpdateDate', models.DateTimeField(auto_now=True)),
                ('UpdatedBy', models.IntegerField(blank=True, null=True)),
            ],
        ),
    ]
