module "security_group_rule" {
  source = "../modules/security_group_rule"

  security_group_id = module.security_group.id

  for_each          = local.variables.security_group_rule

  from_port         = each.value.from_port
  to_port           = each.value.to_port
  type              = each.value.type
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_blocks
  
}