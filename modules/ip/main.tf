# Crée une interface réseau
resource "aws_network_interface" "jenkins_eni" {
  subnet_id       = var.subnet_id
  security_groups = [var.security_group_id]
}

# Associe l'EIP à l'interface réseau
resource "aws_eip_association" "jenkins_eip_association" {
  allocation_id = aws_eip.jenkins_eip.id
  network_interface_id = aws_network_interface.jenkins_eni.id
}

# Crée l'adresse Elastic IP
resource "aws_eip" "jenkins_eip" {
  

  tags = {
    Name = "jenkins_public_ip"
  }
}

output "network_interface_id" {
  value = aws_network_interface.jenkins_eni.id
}

output "public_ip" {
  value = aws_eip.jenkins_eip.public_ip
}
