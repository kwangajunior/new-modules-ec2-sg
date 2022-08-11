resource "aws_instance" "webserver" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  key_name      = "tam22"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

provider "aws" {
  region = "us-east-1"
}