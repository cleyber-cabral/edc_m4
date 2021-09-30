terraform{
  required_providers {
    kubernetes = {
      source  = "registry.terraform.io/hashicorp/kubernetes"
      version = "~> 1.0"
    }
  }
}


provider "aws" {
  region = var.region_id
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}