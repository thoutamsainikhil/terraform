terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.90.1"
    }
  }

  backend "s3" {
    bucket = "mdwas-tf-remote-state"
    key    = "expense-bknd-infra"
    region = "us-east-1"
    dynamodb_table = "82daws-state-locking"
  }
}

provider "aws" {
  # Configuration options
}