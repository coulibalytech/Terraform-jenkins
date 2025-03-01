resource "aws_instance" "jenkins_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.instance_name
  }

  /*ebs_block_device {
    device_name = var.device_name
    volume_id   = var.ebs_volume_id
  }*/

  # Lier l'interface réseau de manière statique à l'instance EC2
  network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }

  user_data = var.userdata_file # Pour installer Docker et Jenkins
}
