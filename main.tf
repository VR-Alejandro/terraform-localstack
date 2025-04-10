terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.94.1"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true 

  endpoints {
    s3 = "http://localhost:4566"
    # dynamodb = "http://localhost:4566"
    # sqs      = "http://localhost:4566"
  }
  s3_use_path_style = true

  access_key = "test"
  secret_key = "test"
}
