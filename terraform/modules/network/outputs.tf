output "public_subnet" {
  value = aws_subnet.public_subnet.*.id
}

output "private_subnet" {
  value = aws_subnet.private_subnet.*.id
}


output "vpc_id" {
  value = aws_vpc.vpc.id
}


output "security_groups_id" {
  value = aws_security_group.ssh_security_group.id
}