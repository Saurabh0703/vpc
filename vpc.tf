resource "aws_vpc" "main" {

cidr_block = "10.0.0.0/16"

  tags = {
    "Name"      = var.tag_name
    "Environment" = var.tag_environment
    "Project" = var.tag_project
    "Owner" = var.tag_owner 
  }

}
