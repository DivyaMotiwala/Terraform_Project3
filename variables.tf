variable "profile" {
    default = "divya_terraform"
}

variable "regionA" {
    default = "us-east-1a"
}
variable "regionB" {
    default = "us-east-1b"
}

variable "ami-id" {
    default = "ami-06ca3ca175f37dd66"
}

variable "instance-type" {
    default = "t2.micro"
}

#variable "vpc_id" {}
variable "access_key" {
  default="AKIAZQFPGTOXYS5U4W67"
}
variable "secret_key" {
  default ="rgPBjmkAXzyHGVG685NyD1RMXVUUEXyOurKdEjer"
}

# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

# Defining CIDR Block for Subnet
variable "subnet1_cidr" {
  default = "10.0.1.0/24"
}
# Defining CIDR Block for 2d Subnet
variable "subnet2_cidr" {
  default = "10.0.2.0/24"
}
