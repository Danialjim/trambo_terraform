variable "name"{
    desciption = "The name of the subnet eu_west-1a"
}

variable "enviroments"{
    desciption = "The name of the envroment"
}

variable "cidrs"{
    type = list
    desciption = "List of cidrs 10.0.0.0/24, 10.0.1.0/24, 10.0.2.0/24"
}

variable "availability_zones"{
    type = list
    desciption = "List of AZ eu-west-1a, eu-west-1b, eu-west-1c "
}

variable "vpc_id"{
    desciption = "VPC id"
}