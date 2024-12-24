variable "project" {
    default = "expense" 
}

variable "environment" {
    default = "dev" 
}

variable "bastion_tags" {
    type = map
    default = {
        component = "Bastion"
    }
}

variable "common_tags" {
    type = map
    default = {}
}

