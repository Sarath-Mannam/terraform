variable "ami_id" {
  type = string  # this is the data type
  default = "ami-0f3c7d07486cad139" # this is the default value 
}

variable "instances" {
  type = map 
  default = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
    Redis = "t2.micro"
    RabbitMQ = "t2.micro"
    Catalogue = "t2.micro"
    User = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Payment = "t2.micro"
    Web = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z09091061QAS3N8QY4ZDO"
}

variable "domain" {
  default = "sarathmannam.online"
}

variable "ingress" {
  type = list
  default = [
    {
        from_port = 80
        to_port = 80
        description = "Allowing PORT 80 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 443
        to_port = 443
        description = "Allowing PORT 443 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 22
        to_port = 22
        description = "Allowing PORT 22 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}