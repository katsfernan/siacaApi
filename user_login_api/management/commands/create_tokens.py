from rest_framework.authtoken.models import Token
from user_login_api.models import Usuario
from django.core.management.base import BaseCommand

class Command(BaseCommand):
    help = 'Asigna tokens de seguridad a los usuarios existentes'

    def handle(self, *args, **kwargs):
        for user in Usuario.objects.all():
            Token.objects.get_or_create(user=user)

