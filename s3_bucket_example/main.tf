terraform {
    required_version = "1.0.2"

    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "3.50.0"
      }
    }
}


provider "aws" {
    region = "sa-east-1"
    profile = "tf_1.0.2"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-only-bucket-in-world"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "terraform"
  }
}