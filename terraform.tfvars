access_key = "AKIAVPMU7LCWQCDLCG5P" # Access key
secret_access_key = "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" # Secret access key
region = "ap-south-1" # Region
instance_type = "t2.micro" # instance type
ami = "ami-079b5e5b3971bd10d" # AMI ID
associate_public_ip_address = true # Assigning public ip address
monitoring = false # enabling monitoring or not
subnet_id = "subnet-0e7ac4d4254b91b9c" # Subnet id where you want to launch instance in
vpc_security_group_ids = [ "sg-00a8ffc8f227829cd" ] # Security group to be attached to ec2 instance
keyname = a.pem
tags = {
  "Name" = "Test-Instance"
  "Env"  = "Dev"
}

