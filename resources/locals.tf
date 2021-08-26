locals {
  variables = {
virtual-machine = {
	ami                 		= "ami-083ac7c7ecf9bb9b0"
	instance_type 	     		= "t3a.nano"
	associate_public_ip_address 	= true
	key_name 	     		= "ec2_kops"
  Name = "mysqlinstance"
}
        vpc = {
      cidr_block = "10.0.0.0/16"
      Name = "mysqlvpc"
    }
    subnet = {
        cidr_block = "10.0.1.0/24"
        Name = "mysqlsubnet"
              }
      
    security_group = {
      security_group_name = "instance_security_group"
      Name = "mysqlnsg"
}
  security_group_rule = {
    https = {
    type              = "ingress"
    from_port         = 443
    to_port           = 443
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
  },
  http = {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  },
  ssh = {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
},
alltraffic = {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
}
  }
}