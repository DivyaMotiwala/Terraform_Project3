resource "aws_vpc" "terraform_project_vpc" {
  cidr_block       = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  tags = {
    Name = "Terraform Project VPC"
  }
}