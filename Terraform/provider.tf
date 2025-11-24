
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"    # provider source (HashiCorp Registry)
      version = "~> 5.0"           # provider version constraint
    }
  }
}

provider "aws" {
  region = "us-east-1"             # default AWS region for resources
}

