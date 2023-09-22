terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  }
  resource "aws_instance" "multiple_instances" {
  ami           = var.ami
  instance_type = var.ins_type

  subnet_id     = "subnet-0962069167a59d185"
  tags = {
    Name  = var.name
    Owner = var.owner
  }  
    volume_tags = {
    Name  = var.name
    Owner = var.owner
  }
}