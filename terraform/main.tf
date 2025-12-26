# Example Terraform configuration for EKS simulation
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider configuration (commented for simulation)
# provider "aws" {
#   region = var.aws_region
# }

# VPC simulation
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "devsecops-vpc"
  }
}

# Output for documentation
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}
