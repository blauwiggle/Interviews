import boto3
import os

def lambda_handler(event, context):
    dynamodb = boto3.resource('dynamodb')
    table_name = os.environ['TABLE_NAME']
    table = dynamodb.Table(table_name)
    
    # Query the table using the GSI SSO-2FA index
    response = table.query(
        IndexName='SSO-2FA-index',
        KeyConditionExpression='#sso = :sso_val AND #2fa = :fa_val',
        ExpressionAttributeNames={
            '#sso': 'SSO',
            '#2fa': '2FA'
        },
        ExpressionAttributeValues={
            ':sso_val': 1,
            ':fa_val': 1
        }
    )
    
    # Extract and return IDs
    ids = [item['Id'] for item in response['Items']]
    
    print("Filtered IDs:", ids)
    return ids
