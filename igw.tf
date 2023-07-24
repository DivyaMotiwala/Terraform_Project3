resource "aws_internet_gateway" "terraform_project_igw" {
  vpc_id = aws_vpc.terraform_project_vpc.id //"${var.vpc_id}" 
  tags = {
    Name = "Terraform VPC - Internet Gateway"
  }
}
