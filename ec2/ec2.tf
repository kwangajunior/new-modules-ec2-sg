resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

