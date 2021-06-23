output "VPC_ID" {
    value = aws_vpc.dev.id 
}

output "DEF_VPC_ID" {
    value = var.DEF_VPC_ID
}

output "VPC_CIDR" {
    value = var.VPC_CIDR 
}

output "DEFAULT_VPC_CIDR" {
    value = data.aws_vpc.default.cidr_block
}

output "PRIVATE-SUBNET" {
    value = aws_subnet.private.*.id 
}

output "PUBLIC-SUBNET" {
    value = aws_subnet.public.*.id 
}
