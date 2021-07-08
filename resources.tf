## Configure the provider block
provider "aws" {
  region                    =var.aws_region
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
## Configure the resource block
resource "aws_instance" "web-server-1" {
  ami                       = var.aws_ami_id
  instance_type             = var.aws_instance_type[0]
  subnet_id                 = var.aws_subnet_id[0]
  vpc_security_group_ids    = [var.vpc_security_group_ids[0]]
  key_name                  = var.aws_key_name

  tags                      = {
    Name                    = var.aws_tag_name[0]
    Purpose                 = var.aws_tag_purpose[0]
    Env                     = var.aws_tag_env[0]
  }
}
## configure the resoruce block with another instance_type
resource "aws_instance" "web-server-2" {
  ami                       = var.aws_ami_id
  instance_type             = var.aws_instance_type[1]
  subnet_id                 = var.aws_subnet_id[1]
  vpc_security_group_ids    = [var.vpc_security_group_ids[1]]
  key_name                  = var.aws_key_name

  tags                      = {
    Name                    = var.aws_tag_name[1]
    Purpose                 = var.aws_tag_purpose[1]
    Env                     = var.aws_tag_env[2]
  }
}

# Declaring RDS DB creation..

resource "aws_db_instance" "mysqldb" {
  allocated_storage         = var.rds_allocated_storage
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  name                      = var.rds_name
  username                  = var.rds_username
  password                  = var.rds_password
  parameter_group_name      = "default.mysql5.7"
  skip_final_snapshot       = true
  tags                      = {
    Name                    = var.aws_tag_name[0]
    Purpose                 = var.aws_tag_purpose[1]
    Env                     = var.aws_tag_env[0]
  }
}
