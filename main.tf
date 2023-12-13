provider "aws" {
  region = var.region_name  # Set your desired AWS region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids

  eks_managed_node_groups = var.eks_managed_node_groups
  eks_managed_node_group_defaults = var.eks_managed_node_group_defaults

  cluster_identity_providers = {
    sts = {
      client_id = "sts.amazonaws.com"
    }
  }
}
