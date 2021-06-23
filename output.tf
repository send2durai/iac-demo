output "VPC_ID" {
    value = aws_vpc.dev.id 
}

output "VPC_CIDR" {
    value = var.VPC_CIDR 
}

output "PRIVATE-SUBNET" {
    value = aws_subnet.private.*.id 
}

output "PUBLIC-SUBNET" {
    value = aws_subnet.public.*.id 
}
