resource "aws_route_table" "project_route" {
    vpc_id = aws_vpc.terraform_project_vpc.id //"${var.vpc_id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.terraform_project_igw.id
    }
    tags = {
        Name = "Public Subnets Route Table for Terraform VPC"
    }
}

resource "aws_route_table_association" "project_route_us_east_1a_public" {
    subnet_id = aws_subnet.public_us_east_1a.id
    route_table_id = aws_route_table.project_route.id
}
resource "aws_route_table_association" "project_route_us_east_1b_public" {
    subnet_id = aws_subnet.public_us_east_1b.id
    route_table_id = aws_route_table.project_route.id
}