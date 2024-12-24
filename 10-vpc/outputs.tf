# output "az_info" {
#   value = module.vpc.az_info
# }

# output "default_vpc" {
#     value = module.vpc.default_vpc
# }

# output "default_vpc_route_table" {
#     value = module.vpc.default_vpc_route_table
  
# }

output "public_subnets_id" {
  value = module.vpc.private_subnets_id
}

output "private_subnets_id" {
  value = module.vpc.private_subnets_id
}

output "database_subnets_id" {
  value = module.vpc.database_subnets_id
}