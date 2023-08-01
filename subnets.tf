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
resource "aws_subnet" "public-3" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.10.0/24"

availability_zone = var.availability_zone3

map_public_ip_on_launch = true

  tags = {
    "Name"      = var.pub_subnet-3_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }
}
resource "aws_subnet" "private-1" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.4.0/24"

availability_zone = var.availability_zone1

map_public_ip_on_launch = false

  tags = {
    "Name"      = var.private_subnet-1_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}

resource "aws_subnet" "private-2" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.5.0/24"

availability_zone = var.availability_zone2

map_public_ip_on_launch = false

  tags = {
    "Name"      = var.private_subnet-2_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}
resource "aws_subnet" "private-3" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.6.0/24"

availability_zone = var.availability_zone3

map_public_ip_on_launch = false

  tags = {
    "Name"      = var.private_subnet-3_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}

resource "aws_subnet" "database-1" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.7.0/24"

availability_zone = var.availability_zone1

map_public_ip_on_launch = false

  tags = {
    "Name"      = var.database-1_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}

resource "aws_subnet" "database-2" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.8.0/24"

availability_zone = var.availability_zone2

map_public_ip_on_launch = false

  tags = {
    "Name"      = var.database-2_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}

resource "aws_subnet" "database-3" {

vpc_id = aws_vpc.main.id

cidr_block = "10.0.9.0/24"

availability_zone = var.availability_zone3

map_public_ip_on_launch = false

  tags = {
    "Name"      = var.database-3_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}


