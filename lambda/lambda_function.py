import json

def lambda_handler(event, context):
    # Récupérer les informations d'utilisateur et mot de passe depuis l'événement
    username = event.get('username')
    password = event.get('password')

    # Condition d'authentification simple
    if username == 'admin' and password == 'password':
        return {
            'statusCode': 200,
            'body': json.dumps('Authentication Successful')
        }
    else:
        return {
            'statusCode': 403,
            'body': json.dumps('Authentication Failed')
        }
