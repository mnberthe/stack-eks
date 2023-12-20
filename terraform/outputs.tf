################################################################################
# VPC
################################################################################

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}
output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "VPC public subnets' IDs list"
}
output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "VPC private subnets' IDs list"
}

################################################################################
# Cluster
################################################################################

output "region" {
  description = "Amazon Web Service EKS Cluster region"
  value       = var.region
}

output "cluster_name" {
  description = "Amazon Web Service EKS Cluster Name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for Amazon Web Service EKS "
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ID for the Amazon Web Service EKS Cluster "
  value       = module.eks.cluster_security_group_id
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = module.eks.cluster_certificate_authority_data
}

output "cluster_status" {
  description = "Status of the EKS cluster. One of `CREATING`, `ACTIVE`, `DELETING`, `FAILED`"
  value       = module.eks.cluster_status
}
