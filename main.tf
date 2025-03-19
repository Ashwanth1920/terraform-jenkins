provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345" # Change this to a unique bucket name
  acl    = "private"
}
