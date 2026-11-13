resource "aws_s3_bucket" "example" {
  bucket = var.pdeg 


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}