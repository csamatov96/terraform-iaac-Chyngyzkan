resource "aws_instance" "ec2" { 
  
  ami                         = "${var.ami}" 
  instance_type               = "${var.instance_type}" 
  associate_public_ip_address = "${var.associate_public_ip_address}" 
  key_name                    = "${aws_key_pair.keypair.key_name}" #interpolation added 
  user_data = file("userdata.sh")
  security_groups = ["allow_tls"] #this is how to attach sec group to ec2 by name 
  count = 5

 tags = { 
    Name                      = "${var.tagEc2Name.count}" #count added 
  } 
} 