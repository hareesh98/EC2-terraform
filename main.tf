resource "aws_instance" "DEMO-T" {
  ami           = var.ami 
  instance_type = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id = var.subnet_id
  monitoring = var.monitoring
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = var.tags
  timeouts {
    create = "60m"
  }
}
