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
    purpose        = "Terraform-CICD"
  }
}

## Creating a Pub/Private subnets
resource "aws_subnet" "private-subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.0.0/24"

  tags       = {
    Name     = "Private-Subnet"
    purpose  = "Connect-private EC2 instance"
  }
}
resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.1.0/24"

  tags       = {
    Name     = "Public-Subnet"
    purpose  = "Connect-public EC2 instance"
  }
}

### Creating a S3 bucket
  
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-demo-bucket"
  acl    = "private"

  tags = {
    Name        = "My demo-buckt"
    Environment = "Dev"
    purpose     = "Hosting a static web-content"
  }
}

### Creating an EC2 instance (t2.micro)

resource "aws_instance" "web" {
  ami           = ami-010aff33ed5991201
  instance_type = "t2.micro"
  count         = 2

  tags = {
    Name = "Public-instance"
    purpose = "Internet facing instance"
  }
}
#### RDS instance creating
resource "aws_db_instance" "demo-mysqldb" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "my_sql_db"
  username             = "root"
  password             = "login1-2"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}




