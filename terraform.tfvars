access_key = "" # Access key
secret_access_key = "" # Secret access key
region = "us-east-1" # Region
instance_type = "t2.micro" # instance type
ami = "ami-08c40ec9ead489470" # AMI ID
associate_public_ip_address = true # Assigning public ip address
monitoring = true # enabling monitoring or not
subnet_id = "subnet-02778dc74719a00fb" # Subnet id where you want to launch instance in
vpc_security_group_ids = [ "sg-04bd53e82b33c7a44" ] # Security group to be attached to ec2 instance
tags = {
  "Name" = "testing"
  "Env"  = "Dev"
}

