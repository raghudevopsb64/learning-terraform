resource "aws_instance" "ec2" {
  instance_type = var.INSTANCE_TYPE
  ami           = var.AMI
}

