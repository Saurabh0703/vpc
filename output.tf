output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnet_id_1" {
  value = aws_subnet.private-1.id
}

output "private_subnet_id_2" {
  value = aws_subnet.private-2.id
}

output "public_subnet_id_1" {
  value = aws_subnet.public-1.id
}

output "public_subnet_id_2" {
  value = aws_subnet.public-2.id
}

output "security_group-id" {
  value = aws_security_group.allow_tls.id
}
