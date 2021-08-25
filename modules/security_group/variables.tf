variable "security_group_name" {
  type = string
  description = "(Optional, Forces new resource) Name of the security group. If omitted, Terraform will assign a random, unique name."
}

variable "vpc_id" {
  type = string
  description = "(Optional, Forces new resource) VPC ID."
}

variable "Name" {
  type = string
  description = " (Optional) Name for the security_group"
}