provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


module "users" {
  source = "./modules/User"
  users = var.users
}

module "groups" {
  source = "./modules/Group"
  users = module.users.names
}