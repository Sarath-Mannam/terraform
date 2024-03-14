output "private_ip" {    // Capturing 10 private ip addresses into a list from created 10 EC2 Instances 
  value = aws_instance.conditions[*].private_ip
}

