import boto3
from botocore.exceptions import ClientError


def enviar_email(subject, message, recipient_list):
    client = boto3.client('ses', region_name='us-east-1')
    try:
        response = client.send_email(
            Destination={'ToAddresses': recipient_list},
            Message={
                'Body': {
                    'Html': {
                        'Charset': 'UTF-8',
                        'Data': message,
                    },
                },
                'Subject': {
                    'Charset': 'UTF-8',
                    'Data': subject,
                },
            },
            Source='SIACA <email_name@siaca.com>'
        )

    #Si ocurre algún error, muestra el mismo en consola
    except ClientError as exception:
        print(exception.response['Error']['Message'])
    else:
        print('Email sent! Message ID:')
        print(response['MessageId'])