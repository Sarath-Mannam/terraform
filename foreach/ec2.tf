resource "aws_instance" "roboshop" {
  for_each = var.instances
  ami = var.ami_id
  instance_type = each.value
  tags = {
    Name =each.key
  }
}

# If web fetch Public IP for creating the record, Else you give Private IP  
resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [ each.key == "Web" ? each.value.public_ip : each.value.private_ip ]
}

# Here i don't want to print particular public ip (or) private ip
# I just want to understand what is the info i'm getting when i create the roboshop instance

# output "aws_instance_info" {
#   value = aws_instance.roboshop
# }