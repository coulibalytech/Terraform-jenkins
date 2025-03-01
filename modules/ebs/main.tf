resource "aws_ebs_volume" "jenkins_volume" {
  availability_zone = var.availability_zone
  size              = var.volume_size

  tags = {
    Name = "jenkins_ebs_volume"
  }
}
