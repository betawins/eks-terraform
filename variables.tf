variable "region_name" {
  default = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "eks-Cluster1"
}

variable "cluster_version" {
  description = "Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.24`)"
  type        = string
  default     = "1.25"
}
variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
  default     = "vpc-078adf04201af1076"  # Replace with your VPC ID
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = [
    "subnet-0c8fd418db266da29",
    "subnet-0aec3bd60c4eebfa1",
    "subnet-0125ccbab90eb7efa"
  ]  # Replace with your subnet IDs
}

variable "eks_managed_node_groups" {
  description = "Map of EKS managed node group definitions to create"
  type        = any
  default     = {
    eks_nodes = {
    min_size     = 1
    max_size     = 2
    desired_size = 2

    instance_types = ["t2.medium"]
  }
  }
}

variable "eks_managed_node_group_defaults" {
  description = "Map of EKS managed node group default configurations"
  type        = any
  default     = {  
    nxpm-cloud-eks-worker = {
    min_size     = 1
    max_size     = 2
    desired_size = 2

    instance_types = ["t2.medium"]
  }}
}