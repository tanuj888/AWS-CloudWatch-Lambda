
import boto3
import os 

def lambda_handler(event, context):
    print("Welcome to cloudwatch")

# Listing all AWS Regions
ec2 = boto3.client('ec2')
regions = [region['RegionName'] for region in ec2.describe_regions()['Regions']]
print(*regions,sep='\n')

# Describe  and Filter never expire logGroupName:
for region in regions:
    client = boto3.client('logs', region_name=region)
    response = client.describe_log_groups()
    neverExpireLogs = []

# print(response['logGroups'])
    for logs in response['logGroups']:
        if "retentionInDays" not in logs.keys():
            neverExpireLogs.append(logs['logGroupName'])
            print(logs['logGroupName'])

# Put retentionperiod to 365 days
    for name in neverExpireLogs:
        log = client.put_retention_policy(
            logGroupName=name,
            retentionInDays=365
        )




   