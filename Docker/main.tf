
# Versions 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.61.0"
    }
  }
}

# Authentication to AWS from Terraform code
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

#Statefile storage 
terraform {
  backend "s3" {
    bucket = "satheesh03011"
    key    = "projects_statefile/terraform.state"
    region = "us-east-1"
  }
}

# Continuous Integration - Jenkins
resource "aws_instance" "satheesh_Jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  iam_instance_profile   = var.iam_instance_profile
  user_data              = file("dockerinstall.sh")
  tags = {
    Name      = "Docker_Tomcat"
    CreatedBy = "Terraform"
  }
}
