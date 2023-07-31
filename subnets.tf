resource "aws_subnet" "public-1" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.1.0/24"

availability_zone = var.availability_zone1

map_public_ip_on_launch = true

  tags = {
    "Name"      = var.pub_subnet-1_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }
}

resource "aws_subnet" "public-2" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.2.0/24"

availability_zone = var.availability_zone2

map_public_ip_on_launch = true

  tags = {
    "Name"      = var.pub_subnet-2_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}

resource "aws_subnet" "private-1" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.3.0/24"

availability_zone = var.availability_zone1

map_public_ip_on_launch = true

  tags = {
    "Name"      = var.private_subnet-1_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}

resource "aws_subnet" "private-2" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.4.0/24"

availability_zone = var.availability_zone2

map_public_ip_on_launch = true

  tags = {
    "Name"      = var.private_subnet-2_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}
