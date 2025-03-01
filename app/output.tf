
output "jenkins_url" {
  value = "http://${module.ip.public_ip}:8080"
}
variable "subnet_id" {
  description = "ID du sous-réseau VPC"
  type        = string
}
variable "security_group_id" {
  description = "ID du groupe de sécurité"
  type        = string
}