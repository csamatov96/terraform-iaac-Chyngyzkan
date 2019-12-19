resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/16" #it creates a route table locally access 
  instance_tenancy = "dedicated"

  tags = {
    Name = "${var.tagVPCname}"
  }
}

