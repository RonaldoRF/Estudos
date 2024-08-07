# Generated by Django 5.0.7 on 2024-07-30 04:34

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ElementTypes',
            fields=[
                ('Id', models.AutoField(primary_key=True, serialize=False)),
                ('Name', models.CharField(blank=True, max_length=50, null=True)),
                ('Tag', models.CharField(blank=True, max_length=255, null=True)),
                ('CreationDate', models.DateTimeField(auto_now_add=True)),
                ('CreatedBy', models.IntegerField(blank=True, null=True)),
                ('LastUpdateDate', models.DateTimeField(auto_now=True)),
                ('UpdatedBy', models.IntegerField(blank=True, null=True)),
            ],
        ),
    ]
