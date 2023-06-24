variable "instance_name" {
  type = string
  default = "my-instances"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_string_instances" {
  instance_type = "t2.micro"
  ami = "ami-0s00d0d0dskndksn"
  tags = {
    Name = var.instance_name
  }
}