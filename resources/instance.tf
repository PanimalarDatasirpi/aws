module "instance" {
  source = "../modules/instance"
ami                 	      	= local.variables.virtual-machine.ami 
instance_type 	     	      	= local.variables.virtual-machine.instance_type
associate_public_ip_address 	= local.variables.virtual-machine.associate_public_ip_address
subnet_id 			              = module.subnet.id 
vpc_security_group_ids 		    = [module.security_group.id]
key_name 	     		            = local.variables.virtual-machine.key_name
Name                          = local.variables.virtual-machine.Name
}
    
