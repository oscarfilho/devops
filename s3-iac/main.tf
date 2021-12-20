terraform {
  required_version = "0.14.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "oscar"
}


resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-test-bucket-19861007-02"
  acl    = "private"

  tags = {
    Name        = "My bucket Oscar"
    Environment = "prd"
    CreatedAt   = "2021-12-19"
    Owner       = "Oscar Filho"
    OwnerEmail  = "oscar.assuncao.filho@gmail.com"
  }
}
