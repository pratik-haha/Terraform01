resource "aws_instance" "first_instance" {
  ami           = "ami-0fd3ac4abb734302a" # Amazon Linux 2 AMI
  instance_type = "t3.micro"
  subnet_id = "subnet-0cfa05aebd2e89c3b"
  }

  resource "aws_vpc" "first_vpc" {
    cidr_block = "${var.aws_vpc}"
    
    }

    resource "aws_subnet" "regional_subnet" {
        vpc_id     = aws_vpc.first_vpc.id
        cidr_block = aws_subnet.default.cidr_block
        availability_zone = "us-east-1a"
        map_public_ip_on_launch = true
      }