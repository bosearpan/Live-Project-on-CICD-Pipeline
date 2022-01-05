terraform {
  backend "s3" {
    bucket = "mybuck-project"
    key    = "path/state"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.63.0"
    }
 }
}
provider "aws" {
  region = "us-east-1"
}
