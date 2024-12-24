variable "project" {
    default = "expense" 
}

variable "environment" {
    default = "dev" 
}

variable "mysql_sg_name" {
    default = "mysql"
}

variable "backend_sg_name" {
    default = "backend"
}

variable "frontend_sg_name" {
    default = "frontend"
}

variable "bastion_sg_name" {
    default = "bastion"
}

variable "ansible_sg_name" {
    default = "ansible"
}

variable "common_tags" {
    type = map
    default = {}
}

variable "mysql_sg_tags" {
    type = map
    default = {
        component = "mysql"
    }
}

variable "backend_sg_tags" {
    type = map
    default = {
        component = "backend"
    }
}

variable "frontend_sg_tags" {
    type = map
    default = {
        component = "frontend"
    }
}

variable "bastion_sg_tags" {
    type = map
    default = {
        component = "bastion"
    }
}

variable "ansible_sg_tags" {
    type = map
    default = {
        component = "ansible"
    }
}