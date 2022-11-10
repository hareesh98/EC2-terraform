terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.0.0"
}
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_access_key = var.secret_access_key
  }
