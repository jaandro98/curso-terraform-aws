variable "region" {
    type = string
    description = "Region a utilizar en AWS"
    default = "eu-west-1"
}

variable "aws_vpc_cidr" {
    type = string
    description = "CIDR VPC"
    default = "10.0.0.0/16"
}

variable "aws_subnet1_cidr" {
    type = string
    description = "CIDR subnet1"
    default = "10.0.10.0/24"
}

variable "aws_az_subnet1" {
    type = string
    description = "Availability Zone"
    default = "eu-west-1b"
}

variable "ami_id" {
    type = string
    description = "AMI id para la instancia Amazon Linux 2 eu-west-1"
    default = "ami-0bb3fad3c0286ebd5"
}