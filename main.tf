terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "myterrajenbuck01"

  tags = {
    Name        = "MyTerraformBucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  key_name      = "newterrajenk"  # Replace with your actual key pair

  tags = {
    Name        = "MyTerraformInstance"
    Environment = "Dev"
  }
  
}



