provider "aws" {
  region = var.region_name  # Set your desired AWS region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true
  vpc_id          = "vpc-078adf04201af1076" # Replace With your VPC ID
  subnet_ids      = ["subnet-0c8fd418db266da29","subnet-0aec3bd60c4eebfa1","subnet-0125ccbab90eb7efa"]  #Replace With your subnet IDs

  eks_managed_node_groups = var.eks_managed_node_groups
  eks_managed_node_group_defaults = var.eks_managed_node_group_defaults

  cluster_identity_providers = {
    sts = {
      client_id = "sts.amazonaws.com"
    }
  }
}
