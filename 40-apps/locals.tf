locals {
  resource_name = "${var.project}-${var.environment}"
  mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id.value
  public_sg_id = data.aws_ssm_parameter.public_sg_id.value
  private_sg_id = data.aws_ssm_parameter.private_sg_id.value
  ansible_sg_id = data.aws_ssm_parameter.ansible_sg_id.value
  database_subnet_id = split(",",data.aws_ssm_parameter.database_subnet_id.value)[0]
  private_subnet_id = split(",",data.aws_ssm_parameter.private_subnet_id.value)[0]
  public_subnet_id = split(",",data.aws_ssm_parameter.public_subnet_id.value)[0]
}
