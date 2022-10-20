resource "aws_key_pair" "terraform" {
  key_name   = "terraform"
  public_key = "${file("${path.module}/terraform.pub")}"
}

resource "aws_instance" "test_server" {
  ami           = var.ami 
  instance_type = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  monitoring = var.monitoring
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_id
  user_data = "${file("${path.module}/userdata.sh")}"
  key_name = aws_key_pair.terraform.key_name
  tags = var.tags
  timeouts {
    create = "60m"
  }
}

variable "access_key" {
  description = "aws access key"
  type        = string
}

variable "secret_access_key" {
  description = "aws secret access key"
  type        = string
}

variable "region" {
  description = "aws region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "instance ami"
  type = string
}

variable "associate_public_ip_address" {
  description = "assigning public ip address"
  type = bool
}

variable "monitoring" {
  description =  "enabling monitoring"
  type = bool
  default = "false"
}

variable "vpc_security_group_ids" {
  description =  "VPC Security groups to attach to ec2 instance"
  type = list
}

variable "subnet_id" {
  description = "subnet id"
  type = string
}

variable "tags" {
  description =  "ec2 instance tags"
  type = map
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.test_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.test_server.public_ip
}
