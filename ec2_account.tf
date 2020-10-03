provider "aws" {
    region = var.region
}

resource "aws_vpc" "main1" {
    cidr_block = var.aws_vpc_cidr
    enable_dns_hostnames = true

    tags = {
        Name = "main_vpc"
    }
}

resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.main1.id
    cidr_block = var.aws_subnet1_cidr
    map_public_ip_on_launch = true
    availability_zone = var.aws_az_subnet1

    tags = {
      "Name" = "subnet1_eu-west-1b"
    }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main1.id

  tags = {
    Name = "gateway_main"
  }
}

resource "aws_route_table" "r" {
  vpc_id = aws_vpc.main1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "r_main"
  }
}

resource "aws_route_table_association" "r_assoc_subnet1" {
  subnet_id = aws_subnet.subnet1.id
  route_table_id = aws_route_table.r.id
}

resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.main1.id
    cidr_block = "10.0.20.0/24"
    map_public_ip_on_launch = true
    availability_zone = "eu-west-1b"

    tags = {
      "Name" = "subnet2_eu-west-1c"
    }
}

resource "aws_route_table_association" "r_assoc_subnet2" {
  subnet_id = aws_subnet.subnet2.id
  route_table_id = aws_route_table.r.id
}

resource "aws_subnet" "subnet3" {
    vpc_id = aws_vpc.main1.id
    cidr_block = "10.0.30.0/24"
    map_public_ip_on_launch = true
    availability_zone = "eu-west-1a"

    tags = {
      "Name" = "subnet3_eu-west-1c"
    }
}

resource "aws_route_table_association" "r_assoc_subnet3" {
  subnet_id = aws_subnet.subnet3.id
  route_table_id = aws_route_table.r.id
}
