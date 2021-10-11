
# Intranet API

  

## API REST

  

API Rest para la intranet de la empresa SIACA Servicios Integrales Aeronauticos, C.A.

  

## DESPLIEGUE

  

Usando la consola de comandos en la ruta base:
>python -m venv \ruta\base\env
>
>env/Scripts/activate
>
>pip install -r requirements.txt

Luego de que se instalen las dependencias:
- Abrir **SQL Server 2014 Management Studio**
- Ejecutar el archivo **create_db.sql**
- Crear un nuevo login con los siguientes parametros:
-- Login name: siaca_api
-- password: siaca
-- default database: SIACA_INTRANET
- Proporcionarle el user mapping a la db SIACA_INTRANET
- Asignarle el rol db_owner

Posteriormente, usando la consola de comandos:
>python manage.py makemigrations
>
>python manage.py migrate

Ahora se ejecuta el archivo **inserts.sql**

Se generan los tokens de seguridad para los usuarios existentes con el siguiente comando:
>
>python manage.py create_tokens

Y por ultimo, se levanta el servicio con el siguiente comando:
>
>python manage.py runserver
