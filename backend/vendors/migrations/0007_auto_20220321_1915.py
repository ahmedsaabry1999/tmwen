# Generated by Django 3.2.12 on 2022-03-21 17:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('vendors', '0006_auto_20220204_0145'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='image',
            field=models.ImageField(default=' ', upload_to='media/'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='vendor',
            name='image',
            field=models.ImageField(default=' ', upload_to='media/'),
            preserve_default=False,
        ),
    ]