terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.21.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region_aws
}

resource "aws_instance" "app_server" {
  ami           = "ami-03d5c68bab01f3496"
  instance_type = var.instance_type
  key_name = var.chave
  tags = {
    Name = "EC2 devtest"
  }
}

resource "aws_key_pair" "chaveSSH" {
  key_name   = var.chave
  public_key = file("${var.chave}.pub")
  
}

output "IP-PUB" {
  value = aws_instance.app_server.public_ip
}