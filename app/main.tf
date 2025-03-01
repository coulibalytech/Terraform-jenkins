terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.88.0"
    }

  }

  required_version = "1.10.5"

}

terraform {
  backend "s3" {
    bucket = "terraform-backend-cheick"
    key = "cheick.tfstate"
    region = "us-east-1"
    shared_credentials_files = ["../.secrets/credentials"]
    
  }
}
provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["../.secrets/credentials"]
  profile                  = "default"
}

data "aws_ami" "app_ami" {
    most_recent = true
    owners = [ "amazon" ]
    filter {
      name = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-*"]
    }
}

module "ec2" {
  source          = "../modules/ec2"
  ami_id          = "ami-00079ea30d1c8b22c" # ID de l'image Ubuntu Jammy
  instance_type   = "t2.micro"
  key_name = "ec2-user-key"
  instance_name   = "jenkins-server"
  device_name     = "/dev/xvda"
  //ebs_volume_id   = module.ebs.id
  network_interface_id = module.ip.network_interface_id
  userdata_file   = file("../userdata.sh")
}

module "ebs" {
  source          = "../modules/ebs"
  availability_zone = "us-east-1a"
  volume_size     = 20
}

module "ip" {
  source      = "../modules/ip"
  subnet_id = "subnet-04c1d0fe29b356995" 
  security_group_id = "sg-000c38511a7472532"
 
}

module "security-group" {
  source             = "../modules/security-group"
  sg_name            = "jenkins-security-group"
  vpc_id              = "vpc-03a5dfa80514a2923"
  allowed_cidr_blocks = var.allowed_cidr_blocks
}

/*module "key-pair" {
  source = "../modules/key-pair"
  key_name = "jenkins-key"
}*/


resource "null_resource" "jenkins_public_ip" {
    
  provisioner "local-exec" {
    command = "echo 'Jenkins Public IP: ${module.ip.public_ip}' > jenkins_ec2.txt"
  }
}


