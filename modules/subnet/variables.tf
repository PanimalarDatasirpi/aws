variable "cidr_block" {
  type = string
  description = "(Required) The CIDR block for the subnet."
}

variable "vpc_id" {
  type = string
  description = "(Required) The VPC ID."
}
 
variable "Name" {
  type = string
  description = " (Optional) Name for the subnet"
}
