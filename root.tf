provider "aws" {
    region = "eu-west-1"
}

module "ecs" {
    source = "./module/ecs"

    enviroment = var.enviroment
    cluster = var.enviroment
    cloudwatch_prefix = "${var.enviroment}"
    vpc_cidr = var.vpc_cidr
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    availability_zones = var.availability_zones
    max_size = var.max_size
    min_size = var.min_size
    desired_capacity = var.desired_capacity
    key_name = aws_key_pair.ecs.key_name
    instance_type = var.instance_type
    ecs_aws_ami = var.ecs_aws.ami
}

resource "aws_key_pair" "ecs"{
    key_name = "ecs-key-${var.enviroment}"
    public_key = "key_deleted_by_security"
}

variable "vpc_cidr" {}
variable "enviroment" {}
variable "max_size" {}
variable "min_size" {}
variable "desired_capacity" {}
variable "instance_type" {}
variable "ecs_aws_ami" {}

variable "private_subnet_cidrs" {
    type = list
}

variable "public_subnet_cidrs"{
    type = list
}

variable "availability_zones"{
    type = list
}

output "default_alb_target_group" {
    value = module.ecs.default_alb_target_group
}