variable "sg_name" {
  description = "Nom du groupe de securite"
  type        = string
}

variable "vpc_id" {
  description = "ID du VPC pour lequel le Security Group doit être cree"
  type        = string
  default =  "vpc-123abc456def" # Exemple d’ID VPC valide
}

variable "allowed_cidr_blocks" {
  description = "Liste des CIDR autorises pour SSH et Jenkins"
  type        = list(string)
  default     = ["0.0.0.0/0"]  # Par défaut, autorise tout le trafic
}
