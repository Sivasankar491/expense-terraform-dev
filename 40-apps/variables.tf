variable "project" {
    default = "expense" 
}

variable "environment" {
    default = "dev" 
}

variable "Ansible_tags" {
    type = map
    default = {
        component = "Bastion"
    }
}

variable "mysql_tags" {
    type = map
    default = {
        component = "mysql"
    }
}

variable "backend_tags" {
    type = map
    default = {
        component = "backend"
    }
}

variable "frontend_tags" {
    type = map
    default = {
        component = "frontend"
    }
}

variable "ansible_tags" {
    type = map
    default = {
        component = "ansible"
    }
}

variable "common_tags" {
    type = map
    default = {}
}

variable "zone_name" {
    type = string
    default = "kotte.site"
}

