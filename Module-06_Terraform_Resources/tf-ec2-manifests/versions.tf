# Terraform Setting/Configuration Block
terraform {
  required_version = ">= 1.1.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.40.0"
    }
  }
} 

# Terraform Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region = "us-east-1"
}