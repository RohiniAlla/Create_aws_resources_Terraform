provider "registry.terraform.io/hashicorp/aws" {
  region = "us-west-1"
  access_key = "AWS_ACCESS_KEY_ID"
  secret_key = "AWS_SECRET_ACCESS_KEY"
}

resource "aws_instance" "my-instance" {
  ami = "ami-0a15a308c19bc4970"
  instance_type = "t2.micro"

  tags = {
   Name = "ec2 instance2"
  }
} 

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "mys3buckettes"
  #acl = "private"
  tags = {
    Name = "mys3buckettes"
  }
}




