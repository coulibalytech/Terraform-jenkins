variable "ami_id" {
  description = "ID de lAMI (image machine) a utiliser pour l instance EC2 (Ubuntu Jammy recommande)"
  type        = string
}

variable "instance_type" {
  description = "Type de l instance EC2 (par exemple, t2.micro, t2.large)"
  type        = string
}

variable "key_name" {
  description = "Nom de la paire de cles SSH pour accéder a l instance EC2"
  type        = string
}

variable "instance_name" {
  description = "Nom de l instance EC2 (utilise comme tag Name)"
  type        = string
}

variable "device_name" {
  description = "Nom du peripherique pour attacher le volume EBS a l'instance EC2 (ex: /dev/xvda)"
  type        = string
}

/*variable "ebs_volume_id" {
  description = "ID du volume EBS à attacher à l'instance EC2"
  type        = string
}*/

variable "network_interface_id" {
  description = "ID de l interface réseau associée à l adresse IP"
  type        = string
}

variable "userdata_file" {
  description = "Chemin du script user_data pour configurer l'instance (ex.: installer Docker et Jenkins)"
  type        = string
}
