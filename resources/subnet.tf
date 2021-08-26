module "subnet" {
  source = "../modules/subnet"

  vpc_id      = module.vpc.id
  cidr_block  = local.variables.subnet.cidr_block
  Name        = local.variables.subnet.Name
  
}