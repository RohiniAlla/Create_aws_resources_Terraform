terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_instance" "my-instance" {
  ami = "ami-0a15a308c19bc4970"
  instance_type = "t2.micro"

  tags = {
   Name = "ec2 instance2"
  }
} 

resource "aws_s3_bucket" "myterras3bucket" {
  bucket = "myterras3bucket"
  #acl = "private"
  tags = {
    Name = "myterras3bucket"
  }
}

data "aws_vpc" "default"{
  default = "true"
}

resource "aws_security_group" "blog" {
  name = "blog"
  description = "allow all traffic"
  vpc_id = data.aws_vpc.default.id
}





