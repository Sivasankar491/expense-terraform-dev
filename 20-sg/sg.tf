module "sg" {
    source = "git::https://github.com/Sivasankar491/Terraform-sg-module.git?ref=main"
    project = var.project
    environment = var.environment
    sg_name = var.sg_name
    vpc_id = local.vpc_id
    common_tags = var.common_tags
    sg_tags = var.sg_tags
}