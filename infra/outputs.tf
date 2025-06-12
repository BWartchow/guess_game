output "instance_ip" {
  description = "Endereço IP público da instância EC2"
  value       = aws_instance.guess_game_server.public_ip
}
