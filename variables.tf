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
  default     = "vpc-00e43bf8b75a106d9"  # Replace with your VPC ID
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = [
    "subnet-0200ed7779a436e82",
    "subnet-00ae2ec93154f294f",
    "subnet-006ab7cf80898c087",
    "subnet-0956aa532ab87e8d2"
  ]  # Replace with your subnet IDs
}

variable "eks_managed_node_groups" {
  description = "Map of EKS managed node group definitions to create"
  type        = any
  default     = {
    eks_nodes = {
    min_size     = 1
    max_size     = 2
    desired_size = 1

    instance_types = ["t2.medium"]
  }
  }
}

variable "eks_managed_node_group_defaults" {
  description = "Map of EKS managed node group default configurations"
  type        = any
  default     = {  
    eks_nodes_worker = {
    min_size     = 1
    max_size     = 2
    desired_size = 1

    instance_types = ["t2.medium"]
  }}
}
