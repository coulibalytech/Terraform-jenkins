variable "availability_zone" {
  description = "Zone de disponibilité AWS pour le volume EBS (ex : us-east-1a)"
  type        = string
}

variable "volume_size" {
  description = "Taille du volume EBS en GiB"
  type        = number
}
