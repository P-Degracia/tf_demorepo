resource "aws_instance" "example" {
  ami           = "ami-0d97d7f07b25dd693"
  instance_type =  "t3.micro"

  tags = {
    Name = "pdeg-ec2instance"
  }
}