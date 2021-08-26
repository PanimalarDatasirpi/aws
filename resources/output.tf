output "vpc_arn" {
  description = "Amazon Resource Name (ARN) of VPC"
  value = module.vpc.arn
}

output "subnet_id" {
  description = "The ID of the subnet"
  value =  module.subnet.id 
}

output "subnet_arn" {
  description = "The ARN of the subnet"
  value =  module.subnet.arn 
}

output "id" {
  description = "ID of the security group."
  value = module.security_group.id
}

output "vpc_security_group_ids" {
  description = "List of VPC security group ids assigned to the instances"
  value       = module.instance.vpc_security_group_ids
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value = module.instance.security_groups
}