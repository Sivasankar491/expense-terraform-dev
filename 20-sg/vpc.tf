module "vpc" {
    source = "../terraform-vpc-module1"
    environment = var.environment
    project = var.project
    cidr_block = var.cidr_block
    public_subnets = var.public_subnets
    private_subnets = var.private_subnets
    database_subnets = var.database_subnets
    is_peering_required = var.is_peering_required
}