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