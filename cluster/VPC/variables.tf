#variable "aws_secret_key" {}
#variable "aws_access_key" {}


# Defining which AWS region is used for our EC2 instances.
variable "aws_region" {
  type        = string
  default     = "eu-west-2"
  description = "Define which region should be selected to create ec2 instance"
}

# create VPC variables
variable "cluster_name" {
  type        = string
  default     = "assignment-eks"
  description = "Define a name for EKS cluster"
}

variable "iac_environment_tag" {
  type        = string
  default     = "dev"
  description = "Indicate environment name"
}

variable "name_prefix" {
  type        = string
  default     = "assignment"
  description = "Prefix to be used on each infrastructure object Name created in AWS"
}

variable "main_network_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Base CIDR block to be used in our VPC."
}

variable "subnet_prefix_extension" {
  type        = number
  default     = 4
  description = "CIDR block bits extension to calculate CIDR blocks of each subnet"
}

variable "zone_offset" {
  type        = number
  default     = 8
  description = "CIDR block bits extension offset to calculate Public subnets, avoiding collisions with Private subnets"
}
