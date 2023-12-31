vpc_name                               = "mycustomvpc"
vpc_cidr_block                         = "10.16.0.0/16"
vpc_public_subnets                     = ["10.16.101.0/24", "10.16.102.0/24"]
vpc_private_subnets                    = ["10.16.1.0/24", "10.16.2.0/24"]
vpc_database_subnets                   = ["10.16.151.0/24", "10.16.152.0/24"]
vpc_create_database_subnet_group       = true
vpc_create_database_subnet_route_table = true
vpc_enable_nat_gateway                 = true
vpc_single_nat_gateway                 = true
