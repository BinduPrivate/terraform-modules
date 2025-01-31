provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "terraform-s3" {
  bucket = "terraform-s3-bucket-devops-sept-2025"
  force_destroy = true
  tags = {
    Name        = "Terraform-s3-backend"
  }
}

  resource "aws_s3_bucket_versioning" "terraform-s3-versioning" {
  bucket = aws_s3_bucket.terraform-s3.id
  versioning_configuration {
    status = "Enabled"
  }
}
