resource "aws_route_table" "rtb" {

vpc_id = aws_vpc.main.id

route {

cidr_block = "0.0.0.0/0"

gateway_id = aws_internet_gateway.gw.id

}

  tags = {
    "Name"      = var.tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}

resource "aws_route_table_association" "a-1" {

subnet_id = aws_subnet.public-1.id

route_table_id = aws_route_table.rtb.id

  tags = {
    "Name"      = var.tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}

resource "aws_route_table_association" "a-2" {

subnet_id = aws_subnet.public-2.id

route_table_id = aws_route_table.rtb.id

  tags = {
    "Name"      = var.tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}