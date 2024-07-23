# Tofu Block

terraform {
  required_version = ">= 1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.34"
    }
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}


/*
AWS Credentials Profile (profile = "default") configured in terminal
$HOME/.aws/credentials
*/
