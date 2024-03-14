resource "aws_security_group" "allow_all" {
  name = var.sg_name
  description = "allowing all ports"

    ingress { # ingress is nothing but inbound
        description = "Allowing all inbound traffic"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = var.sg_cidr
    }

    egress { # egress is nothing but outbound
    from_port = 0
    to_port = 0
    protocol = "-1" # all protocols
    cidr_blocks = var.sg_cidr
    }

    # from_port 0 - to_port 0 means all ports
}