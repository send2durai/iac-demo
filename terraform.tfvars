# Declaring the region
aws_region  = "ap-south-1"

# Environments like Dev, Cert and Prod
aws_resource_env = ["Dev","Cert","Prod"]

# Declaring key_name
aws_key_name   = "ondot"

# Declaring the instance_type

aws_instance_type = ["t2.micro","t3.nano","t2.large"]

# Declaring the subnet id
aws_subnet_id     = ["subnet-e9190a81","subnet-d866eda3"]

# Declaring the ami_id
aws_ami_id        = "ami-011c99152163a87ae"

# Declaring the security_group_id

vpc_security_group_ids  = ["sg-0fb1052b659369aa8","sg-073fe53c707a08dfb"]

# Declaring the tag_name

aws_tag_name      = ["dev_appserver1","prod_appserver2"]

# Declaring the tag_env
aws_tag_env      = ["dev","cert","prod"]

# Declaring the tag_purpose
aws_tag_purpose  = ["dev webapp","dev_backend_mysqldb"]

# Declaring the RDS instance variables values
aws_db_instance  = "mysqldb"

# Declaring the RDS user name variables values
rds_username  = "admin"

# Declaring the RDS user name variables values
rds_password  = "login1-2"

# Declaring the RDS name
rds_name     = "my_mysqldb"

# Declaring the RDS allocated storage
rds_allocated_storage = 10

# Declaring the Owner and Tower variable values
aws_tag_owner = "thangadurai.murugan@dell.com"

## Declaring the Tower variable values
aws_tag_tower = "CloudOps"
