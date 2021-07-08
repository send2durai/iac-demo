# aws_access_key = "XYZYASTYCUVYASJKLM"
# aws_secret_key = "ghfv789023456uijhgoplmhgb"

# Environments like Dev, Cert and Prod
aws_resource_env = ["Dev","Cert","Prod"]

# Declaring key_name
aws_key_name   = "ondot"

# Declaring the instance_type

aws_instance_type = ["t2.micro","t3.nano","t2.large"]

# Declaring the subnet id
aws_subnet_id     = ["subnet-e9190a81","subnet-d866eda3"]

# Declaring the ami_id
aws_ami_id        = ["ami-011c99152163a87ae","ami-06a0b4e3b7eb7a300"]

# Declaring the security_group_id

vpc_security_group_ids  = ["sg-0fb1052b659369aa8","sg-0b299ae2b4c440960"]

# Declaring the tag_name

aws_tag_name      = ["dev_appserver1","prod_appserver2"]

# Declaring the tag_purpose
aws_tag_purpose   = ["hosting the static web page in dev","hosting the static web page in prod"]

# Declaring default region
aws_region        = "ap-south-1"

# Declaring the resoruce name in the resource block
clb_name       = "dev-project-elb"

# Declaring the resoruce availability_zone in the resoruce block
avail_zone     = ["ap-south-1a","ap-south-1b","ap-south-1c"]

# Declaring the ideal timeout in resource block
ideal_timeout  = "500"

# Declaring the connection_draining in resource block
connection_draining = "false"
# Declaring the environment variable in the tag section like Dev, Cert and Prod
aws_tag_env = ["Dev","Cert","Prod"]

# Declaring the tag name
aws_tag_name = ["Dev-project-elb","Cert-project-elb","Prod-project-elb"]

# Declaring the purpose of the resource in the tag section updating
aws_tag_purpose = ["Development load balancer","Cert load balancer","Production load balancer"]
