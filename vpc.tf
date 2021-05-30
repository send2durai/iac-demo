## Configure the AWS Provider
provider "aws" {
  version = "~> 3.0"
  region  = "ap-south-1"
}

## Creating VPC in AWS

resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  # region           = "ap-south-1"

  tags             = {
    Name           = "demo-vpc"
    purpose        = "Jenkins-CICD"
  }
}
