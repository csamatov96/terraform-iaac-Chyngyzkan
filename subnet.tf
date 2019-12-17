resource "aws_subnet" "subnet0" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main0"
  }
}
resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Main1"
  }
}