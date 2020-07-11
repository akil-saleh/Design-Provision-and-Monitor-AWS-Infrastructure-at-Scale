resource "aws_instance" "micro" {
  ami = var.instance_ami
  instance_type = var.instance_type_micro
  vpc_security_group_ids = [var.security_group]
  subnet_id =var.public_subnet

  tags = {
    Name = "Udacity T2"
  }

  # This will create 4 instances
  count = 4
}

resource "aws_instance" "large" {
  ami = var.instance_ami
  instance_type = var.instance_type_large
  vpc_security_group_ids = [var.security_group]
  subnet_id =var.public_subnet

  tags = {
    Name = "Udacity M4"
  }

  # This will create 2 instances
  count = 0
}

