variable "instance_count" {
  type = number
  default = 2
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_instances" {
  instance_type = "t2.micro"
  ami = "ami-0s00d0d0dskndksn"
  count = var.instance_count
}