module "security_group" {
  source = "../modules/security_group"
  
  	security_group_name 	= local.variables.security_group.security_group_name
  	vpc_id 					= module.vpc.id
	Name                    = local.variables.security_group.Name
  }