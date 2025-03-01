# AMI Configuration
variable "ami_id" {
  description = "ID de l AMI à utiliser pour l instance EC2 Jenkins (Ubuntu Jammy recommande)"
  type        = string
  default     = "ami-0f9fc25dd2506cf6d" # Exemple : Ubuntu 22.04 Jammy (mis à jour selon votre région)
}

# Instance EC2 Configuration
variable "instance_type" {
  description = "Type de l instance EC2 Jenkins"
  type        = string
  default     = "t2.micro" # Par défaut, t2.micro
}

variable "instance_name" {
  description = "Nom de l instance EC2 Jenkins (utilisé comme tag Name)"
  type        = string
  default     = "jenkins-server"
}

# Volume EBS Configuration
variable "volume_size" {
  description = "Taille en GiB du volume EBS pour Jenkins (utilis pour le stockage persistant)"
  type        = number
  default     = 20
}

# IP Configuration
variable "allowed_cidr_blocks" {
  description = "Liste des CIDR blocks pour autoriser l acces aux ports ouverts"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

# Key Pair Configuration
variable "key_name" {
  description = "Nom de la paire de clés creee pour acceder à Jenkins EC2"
  type        = string
  default     = "jenkins-key"
}

# Availability Zone Configuration
variable "availability_zone" {
  description = "Zone de disponibilite pour le volume EBS et l instance EC2"
  type        = string
  default     = "us-east-1a" # Changez selon votre région !
}

# User Data Script
variable "userdata_file" {
  description = "Chemin d'acces au script user_data pour installer Docker / Jenkins"
  type        = string
  default     = "./userdata.sh"
}
variable "vpc_id" {
  description = "ID du VPC pour lequel le Security Group doit être cree"
  type        = string
}