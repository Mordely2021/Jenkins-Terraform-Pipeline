terraform {
  # required_version = ">= 1.3.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }

  }
}



provider "aws" {
  #region = "us-east-1"
  #profile = "AWS-CLI-User"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "tf-gitlab-pipeline-2021"
    key            = "mordely/terraform.tfstate"
    region         = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "github-pipeline"
  }
 }




