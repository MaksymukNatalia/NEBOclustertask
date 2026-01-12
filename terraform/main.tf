terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./modules/network"

}


module "eks" {
  depends_on         = [module.network]
  source             = "./modules/eks"
  private_subnet     = module.network.private_subnet
  public_subnet      = module.network.public_subnet
  security_groups_id = module.network.security_groups_id
}
