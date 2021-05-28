## Creating VPC in AWS

resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags             = {
    Name           = "demo-vpc"
    purpose        = Jenkins-CICD
  }
}
