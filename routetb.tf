resource "aws_route_table" "rtb" {

vpc_id = aws_vpc.main.id

route {

cidr_block = "0.0.0.0/0"

gateway_id = aws_internet_gateway.gw.id
}

tags = {
    "Name"      = var.public-rtb-tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
}
}

resource "aws_route_table_association" "a-1" {
subnet_id = aws_subnet.public-1.id
route_table_id = aws_route_table.rtb.id
}

resource "aws_route_table_association" "a-2" {
subnet_id = aws_subnet.public-2.id
route_table_id = aws_route_table.rtb.id

}
resource "aws_route_table_association" "a-3" {
subnet_id = aws_subnet.public-3.id
route_table_id = aws_route_table.rtb.id


}


resource "aws_route_table" "rtb-private" {
  vpc_id = aws_vpc.main.id   
  route {
   cidr_block = "0.0.0.0/0"
   nat_gateway_id = aws_nat_gateway.natgw.id
}

tags = {
    "Name"      = var.private-rtb-tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
}

}

resource "aws_route_table_association" "rtb-private-1" {
  subnet_id      = aws_subnet.private-1.id
  route_table_id = aws_route_table.rtb-private.id
}

resource "aws_route_table_association" "rtb-private-2" {
  subnet_id      = aws_subnet.private-2.id
  route_table_id = aws_route_table.rtb-private.id
}
resource "aws_route_table_association" "rtb-private-3" {
  subnet_id      = aws_subnet.private-3.id
  route_table_id = aws_route_table.rtb-private.id
}
