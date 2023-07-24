resource "aws_subnet" "public_us_east_1a" {
  vpc_id     = aws_vpc.terraform_project_vpc.id //"${var.vpc_id}"
  cidr_block = "${var.subnet1_cidr}"
  availability_zone = "${var.regionA}" //"us-east-1a"
  tags = {
    Name = "Public Terraform Subnet us-east-1a"
  }
}
resource "aws_subnet" "public_us_east_1b" {
  vpc_id     = aws_vpc.terraform_project_vpc.id //"${var.vpc_id}"
  cidr_block = "${var.subnet2_cidr}"
  availability_zone = "us-east-1b"
  tags = {
    Name = "Public Terraform Subnet us-east-1b"
  }
}