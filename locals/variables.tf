# variable "ami_id" {
#   type = string  # this is the data type
#   default = "ami-0f3c7d07486cad139" # this is the default value 
# }

variable "instance_names" {
  type = list
  default = ["MongoDB","Cart","Catalogue","User","Redis","MySQL", "RabbitMQ", "Shipping", "Payment", "Web" ]
}

variable "zone_id" {
  default = "Z09091061QAS3N8QY4ZDO"
}

variable "domain" {
  default = "sarathmannam.online"
}

variable "isPROD" {
  default = false
}