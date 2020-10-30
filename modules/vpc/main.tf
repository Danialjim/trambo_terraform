resource "aws_vpc" "vpc" {
    cidr_block      = var.cidr 
    enable_dns_hostames = true

    tags = {
        Name        = var.enviroment
        Enviroment  = var.enviroment
    }
}

resource "aws_internet_gateway" "vpc" {
    vpc_id = aws_vpc.vpc.id 

    tags = {
        Enviroment = var.enviroment
    }
}