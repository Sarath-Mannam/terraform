bucket = "roboshop-remote-state-prodd"  # name of the s3 bucket
key = "tfvars"
region = "us-east-1"
dynamodb_table = "roboshop-locking-prod" # DynamoDB table used for state locking to prevent concurrent modifications