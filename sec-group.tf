resource "aws_security_group" "sg" {
  name        = "allow_tls" #this is how to attach sec group to ec2 ITS NAME 
  description = "Allow 22 80 443 inbound traffic"
  vpc_id      = "vpc-3b472741"  #default VPC ID            #"${aws_vpc.vpc.id}" #paste VPC ID of the region u r working in 

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = { 
    Name                      = "sec group" 
  } 
}