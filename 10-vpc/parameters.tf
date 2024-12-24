resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnets_id" {
  name  = "/${var.project}/${var.environment}/public_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.public_subnets_id) 
}

resource "aws_ssm_parameter" "private_subnets_id" {
  name  = "/${var.project}/${var.environment}/private_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.private_subnets_id) 
}

resource "aws_ssm_parameter" "database_subnets_id" {
  name  = "/${var.project}/${var.environment}/database_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.database_subnets_id) 
}



