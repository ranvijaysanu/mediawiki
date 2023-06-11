terraform {
  required_version = ">= 1.4.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
#      version = "~> 4.57"
    }
  }
}

provider "aws" {
  skip_region_validation = true
  region  = "us-east-1"
}
