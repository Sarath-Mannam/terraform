# values mentioned in variables.tf are default values and we can always override them.
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

# variable "sg_name" {
#   default = "allow-all"
# }

variable "sg_name" {
  type = string
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}