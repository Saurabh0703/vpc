variable "tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "VR"
}

variable "natgw_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "natgw"
}

variable "igw_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "igw"
}

variable "public-rtb-tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "public-rtb"
}

variable "private-rtb-tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "private-rtb"
}

variable "VPC_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "VPC"
}

variable "pub_subnet-1_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "pub-subnet-1"
}

variable "pub_subnet-2_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "pub-subnet-2"
}
variable "pub_subnet-3_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "pub-subnet-3"
}

variable "private_subnet-1_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "private-subnet-1"
}

variable "private_subnet-2_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "private-subnet-2"
}
variable "private_subnet-3_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "private-subnet-3"
}
variable "database-1_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "database-subnet-1"
}

variable "database-2_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "database-subnet-2"
}
variable "database-3_tag_name" {
  description = "Name tag value for the resource"
  type        = string
  default     = "database-subnet-3"
}


variable "tag_environment" {
  description = "Environment tag value for the resource"
  type        = string
  default     = "dev"
}

variable "tag_project" {
  description = "project tag value for the resource"
  type        = string
  default     = "VR"
}

variable "tag_owner" {
  description = "owner tag value for the resource"
  type        = string
  default     = "Kamesh"
}

variable "availability_zone1" {
  description = "The availability zone for the resource."
  type        = string
  default     = "ap-northeast-1a"  # Provide a default value or leave it blank if you prefer to pass the value during runtime.
}

variable "availability_zone2" {
  description = "The availability zone for the resource."
  type        = string
  default     = "ap-northeast-1c"  # Provide a default value or leave it blank if you prefer to pass the value during runtime.
}
variable "availability_zone3" {
  description = "The availability zone for the resource."
  type        = string
  default     = "ap-northeast-1d"  # Provide a default value or leave it blank if you prefer to pass the value during runtime.
}
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}
