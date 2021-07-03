## Declaring variables in this block
variable "aws_region" {
  type   = string
}
## Declaring aws keys in a block
## variable "aws_access_key" {}
## variable "aws_secret_key" {}

# Declaring the environmetnal variables
variable "aws_resource_env" {}

# Declaring the key_name for connecting ec2 instances
variable "aws_key_name" {}

# Declaring the instnace type
variable "aws_instance_type" {}

# Declaring the subnet id
variable "aws_subnet_id" {
  type   = list
}

# Declaring the ami_id
variable "aws_ami_id" {
  type  = list
}

# Declaring the security_group_id
variable "vpc_security_group_ids" {
  type   = list
}

# Declaring the tag name
variable "aws_tag_name" {}

# Declaring in the tag for Purpose
variable "aws_tag_purpose" {}
######################################################################## CLB ###################################################################

## Declaring variables in this block
#variable "aws_region" {
  #type   = string
#}
## Declaring aws keys in a block
#variable "aws_access_key" {}
#variable "aws_secret_key" {}

# Declaring the resource name in the resource block
variable "clb_name" {
  type     = string
}

# Declaring the availability_zone in resoruce block
variable "avail_zone" {
  type     = list
}

# Declaring the ideal_timeout in resource block
variable "ideal_timeout" {
  type     = number
}

# Declaring the connection_draining in resource block
variable "connection_draining" {
  type     = bool
}
# Declaring Tag name variables
variable "aws_tag_name" {
  type     = list
}

# Declaring the tag environmetnal variables
variable "aws_tag_env" {
  type      = list
}

# Declaring the tag Purpose
variable "aws_tag_purpose" {
  type      = list
}
