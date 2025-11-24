output "public_ip" {
  
  # Short human-readable description for this output value.
  description = "Public IP of the web server"

  # The value exported: the public IP address attribute from the aws_instance resource.
  value       = aws_instance.web.public_ip
}
