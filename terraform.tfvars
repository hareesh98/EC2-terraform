access_key = "AKIAVPMU7LCW4Q7ZCSM6" # Access key
secret_access_key = "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" # Secret access key
region = "ap-south-1" # Region
instance_type = "t2.micro" # instance type
ami = "ami-079b5e5b3971bd10d" # AMI ID
associate_public_ip_address = true # Assigning public ip address
monitoring = true # enabling monitoring or not
subnet_id = "subnet-0e7ac4d4254b91b9c" # Subnet id where you want to launch instance in
vpc_security_group_ids = [ "sg-00a8ffc8f227829cd" ] # Security group to be attached to ec2 instance
tags = {
  "Name" = "testing@"
  "Env"  = "Dev"
}

