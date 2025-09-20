terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0"
    }
  }
}


provider "aws" {
  region     = "ap-southeast-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345" # must be globally unique
  acl    = "private"

  tags = {
    Name        = "my-terraform-s3"
    Environment = "Dev"
  }
}

