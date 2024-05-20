provider "aws" {
  region = "ap-south-1"
  
}




resource "aws_s3_bucket" "name" {
  bucket = "asxcvbnnmj"
  
}
resource "aws_s3_bucket_versioning" "name" {
  bucket = aws_s3_bucket.name.id
  versioning_configuration {
    status = "enabled"
  }
  
}
  



