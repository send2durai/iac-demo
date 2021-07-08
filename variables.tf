## Declaring variables in this block
variable "aws_region" {
  type   = string
}
# Declaring the environmetnal variables
variable "aws_resource_env" {
  type     = list
}

# Declaring the key_name for connecting ec2 instances
variable "aws_key_name" {
  type    = string
}

# Declaring the instnace type
variable "aws_instance_type" {
  type    = list
}

# Declaring the subnet id
variable "aws_subnet_id" {
  type   = list
}

# Declaring the ami_id
variable "aws_ami_id" {
  type  = string
}

# Declaring the security_group_id
variable "vpc_security_group_ids" {
  type   = list
}

# Declaring the tag name
variable "aws_tag_name" {
  type  = list
}

# Declaring in the tag for Purpose
variable "aws_tag_purpose" {
  type  = list
}

# Declaring in the tag for Purpose
variable "aws_tag_env" {
  type  = list
}

# Declaring RDS creation variable
variable "aws_db_instance" {
  type    = string
}

# Declaring the RDS username and password
variable "rds_username" {
  type  = string
}

# Declaring the RDS username and password
variable "rds_password" {
  type  = string
}

# Declaring the RDS name
variable "rds_name" {
  type  = string
}

# Declaring the RDS allocated storage
variable "rds_allocated_storage" {
  type  = number
}
