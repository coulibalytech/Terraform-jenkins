output "security_group_name" {
  description = "ID du groupe de sécurité Jenkins cree"
  value       = aws_security_group.allow_ssh_http_https.name
}
