terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    region = "ap-south-1"
    bucket = "mystate-backend"
    key    = "terraform/aws-instance/terraform.tfstate"

  }
}