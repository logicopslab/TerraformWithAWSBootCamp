variable "vm_tags" {
  type = map(string)
  default = {
    Name = "my-instance"
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my-instance" {
  ami           = "ami-12122dwdewd"
  instance_type = "t2.micro"
  tags = var.vm_tags
}