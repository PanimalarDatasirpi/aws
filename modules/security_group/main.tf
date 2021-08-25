resource "aws_security_group" "security_group" {
  name        = var.security_group_name
  vpc_id      = var.vpc_id
  tags = {
   Name = var.Name
   }
  }