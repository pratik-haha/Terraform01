provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first_instance" {
  ami           = "ami-0fd3ac4abb734302a" # Amazon Linux 2 AMI
  instance_type = "t3.micro"
  subnet_id = "subnet-0cfa05aebd2e89c3b"
  }
