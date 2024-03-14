resource "aws_instance" "Creation-of-EC2" {
    ami = var.ami_id  # devops-practice in us-east-1
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]

    tags = var.tags
}
