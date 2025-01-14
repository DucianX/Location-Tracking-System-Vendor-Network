resource "aws_subnet" "public_1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.public_subnets[0]
    availability_zone = var.availability_zones[0]  
    map_public_ip_on_launch = true

    tags = {
      Name = "${var.app_name}-public-1"
    }
}

resource "aws_subnet" "public_2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.public_subnets[1]
    availability_zone = var.availability_zones[1]  
    map_public_ip_on_launch = true

    tags = {
      Name = "${var.app_name}-public-2"
    }
}

resource "aws_subnet" "private_1" {
    vpc_id = aws_vpc.vpc.id # 属于哪一个vpc
    cidr_block = var.private_subnets[0] # 一一赋予ip
    availability_zone = var.availability_zones[0]  
    map_public_ip_on_launch = true # 每次生效的时候ip向外暴露，让能被reach out

    tags = {
      Name = "${var.app_name}-private-1" # 显示当前的name
    }
}

resource "aws_subnet" "private_2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.private_subnets[1]
    availability_zone = var.availability_zones[1]  
    map_public_ip_on_launch = true

    tags = {
      Name = "${var.app_name}-private-2"
    }
}

// 多个的原因：备用。和之前写多个ip地址是一样的原因