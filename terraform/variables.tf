
#### provider Variables defined #######
variable "region" {
  type        = string
  description = "Name of the region to select"
  default     = "us-east-1"
}

##### VPC Variables defined #######

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "vpc-eks"
}

variable "public_subnets" {
  type        = list(string)
  description = "A list of public subnets inside the VPC"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  description = "A list of private subnets inside the VPC"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = "true"
}

variable "single_nat_gateway" {
  type        = bool
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = "true"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Should be true to enable DNS hostnames in the VPC"
  default     = "true"
}
variable "enable_dns_support" {
  type        = bool
  description = "Should be true to enable DNS support in the VPC"
  default     = "true"
}

variable "vpc_tags" {
  type = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}

##### EkS Cluster Variables defined #######
variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}


variable "cluster_endpoint_public_access" {
  type        = bool
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled"
  default     = "true"
}

variable "eks_tags" {
  type = map(string)
  default = {
    Environment = "dev"
  }
}


