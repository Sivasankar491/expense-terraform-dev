variable "project" {
    default = "expense" 
}

variable "environment" {
    default = "dev" 
}

variable "sg_name" {
    default = "mysql"
}

variable "common_tags" {
    type = map
    default = {}
}

variable "sg_tags" {
    type = map
    default = {}
}

variable "cidr_block" {
    default = "10.0.0.0/16"
}

variable "public_subnets" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]  
}

variable "private_subnets" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]  
}

variable "database_subnets" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]  
}

variable "is_peering_required" {
  default = true
}