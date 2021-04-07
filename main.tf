terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

# Key
# resource "aws_key_pair" "putty" {
#   key_name   = "putty"
#   # public_key = file("~/.ssh/id_rsa.pub")
# }

resource "aws_instance" "K8s1" {
  ami           = "ami-0518bb0e75d3619ca"
  instance_type = "t2.micro"
  key_name = "Openssh"

  tags = {
    Name = "K8s1"
  }
}

resource "aws_instance" "K8s2" {
  ami           = "ami-0518bb0e75d3619ca"
  instance_type = "t2.micro"
  key_name = "Openssh"

  tags = {
    Name = "K8s2"
  }
}

resource "aws_instance" "K8s3" {
  ami           = "ami-0518bb0e75d3619ca"
  instance_type = "t2.micro"
  key_name = "Openssh"

  tags = {
    Name = "K8s3"
  }
}