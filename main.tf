resource "aws_s3_bucket" "example" {
  bucket = var.pdeg 


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}  
resource "aws_instance" "example" {
  ami           = "ami-0d97d7f07b25dd693"
  instance_type =  "t3.micro"

  tags = {
    Name = "pdeg-ec2instance"
  }
}

resource "aws_s3_bucket" "demo" {
  bucket = "new-bucket-tf1126"
}
resource "aws_instance" "name" {
  ami           = "ami-0d97d7f07b25dd693"
  instance_type = "t3.micro"
}

module "ec2" {
  source = "./modules/ec2"
}
module "s3" {
  source = "./modules/s3"
}