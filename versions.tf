terraform {
/*  cloud {
    organization = "onboarding-fawaz"

    workspaces {
      name = "aws-terraform-run"
    }
  } */
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.1.0"
}