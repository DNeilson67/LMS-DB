# Generated by Django 4.2.6 on 2023-11-11 07:44

import authy.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authy', '0003_remove_profile_banner'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='banner',
            field=models.ImageField(blank=True, null=True, upload_to=authy.models.user_directory_path_banner, verbose_name='Banner'),
        ),
    ]
