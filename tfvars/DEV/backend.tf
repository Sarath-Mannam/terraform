bucket = "roboshopp-remote-state"
key = "tfvars"
region = "us-east-1"
dynamodb_table = "roboshop-locking" # DynamoDB table used for state locking to prevent concurrent modifications
  