resource "aws_internet_gateway" "gw" {

vpc_id = aws_vpc.main.id

  tags = {
    "Name"      = var.tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}
