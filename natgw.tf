resource "aws_eip" "elastic-ip" {
  vpc = true
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.elastic-ip.id
  subnet_id     = aws_subnet.public-1.id
  tags = {
    "Name"      = var.natgw_tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }
}

