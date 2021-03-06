resource "aws_instance" "sample" {
  instance_type          = "t3.small"
  ami                    = "ami-0eb5f3f64b10d3e0e"
  vpc_security_group_ids = [aws_security_group.allow_ec2.id]
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-b64"
    key    = "example1/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.14.0"
    }
  }
}
