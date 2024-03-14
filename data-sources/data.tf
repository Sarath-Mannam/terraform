data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["amazon"] # you can give AWS Account ID

   filter {
        name   = "name"
        values = ["amzn2-ami-kernel-5.10-hvm-*.0-x86_64-gp2"]
    }
}

output "ami_id" {
  value = data.aws_ami.ami_id.id
}

data "aws_vpc" "default" {
  default = true
}

output "vpc_info" {
  value = data.aws_vpc.default
}

resource "aws_security_group" "allow-http" {
  name = "inbound from port 80"
  vpc_id = data.aws_vpc.default.id
  description = "allowing port number 80"

    ingress { # ingress is nothing but inbound
        description = "Allowing all inbound traffic"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress { # egress is nothing but outbound
    from_port = 0
    to_port = 0
    protocol = "-1" # all protocols
    cidr_blocks = ["0.0.0.0/0"]
    }
    # from_port 0 - to_port 0 means all ports
}