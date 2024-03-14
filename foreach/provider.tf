terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # you can give access key and secret key, but there is security problem because we are going to -
  # - commit this into GitHub so unauthorized users may access 
  # by mistake if you push AWS access and secret key's to Github immediately get an email from Github to delete
  # region = "us-east-1"
  region = "us-east-1"
}



