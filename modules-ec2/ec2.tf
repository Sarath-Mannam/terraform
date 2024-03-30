# This creates EC2 Instance in default VPC
resource "aws_instance" "instance" {
  ami = var.ami_id
  instance_type = var.instance_type
}