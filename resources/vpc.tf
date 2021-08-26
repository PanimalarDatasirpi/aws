module "vpc" {
  source = "../modules/vpc"

  cidr_block  = local.variables.vpc.cidr_block
  Name        = local.variables.vpc.Name  
}