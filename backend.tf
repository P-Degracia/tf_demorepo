terraform {
  backend "s3" {
    bucket = "demo-bucket-tf111126"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}