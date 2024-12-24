data "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.project}/${var.environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "public_sg_id" {
  name = "/${var.project}/${var.environment}/frontend_sg_id"
}

data "aws_ssm_parameter" "private_sg_id" {
  name = "/${var.project}/${var.environment}/backend_sg_id"
}

data "aws_ssm_parameter" "ansible_sg_id" {
  name = "/${var.project}/${var.environment}/ansible_sg_id"
}

data "aws_ssm_parameter" "database_subnet_id" {
  name =  "/${var.project}/${var.environment}/database_subnet_id"
}

data "aws_ssm_parameter" "public_subnet_id" {
  name =  "/${var.project}/${var.environment}/public_subnet_id"
}

data "aws_ssm_parameter" "private_subnet_id" {
  name =  "/${var.project}/${var.environment}/private_subnet_id"
}


data "aws_ami" "joindevops" {

	most_recent      = true
	owners = ["973714476881"]
	
	filter {
		name   = "name"
		values = ["RHEL-9-DevOps-Practice"]
	}
	
	filter {
		name   = "root-device-type"
		values = ["ebs"]
	}

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_route53_zone" "expense" {
  name         = "kotte.site"
  private_zone = false
}