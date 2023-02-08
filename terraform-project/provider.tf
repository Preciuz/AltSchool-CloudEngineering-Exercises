terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  # ...

  provisioner "local-exec" {
    command = "echo ${aws_instances.myec2.public_ip} >> /etc/ansible/hosts"
  }
}