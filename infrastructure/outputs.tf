output "instance_public_ip" {
  value = aws_instance.k3s_server.public_ip
}

