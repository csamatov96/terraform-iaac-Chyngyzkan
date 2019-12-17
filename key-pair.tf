#resource "aws_key_pair" "deployer" { 
#  key_name   = "myMacKey" 
#  public_key = file("~/.ssh/id_rsa.pub") 
#}

resource "aws_key_pair" "keypair" {  #no interpolate next to the resource name 
  key_name = "${var.key_name}" 
  public_key = "${file("${var.key_name_location}")}" #interpolation = "${aws_key_pair.deployer.key_name}"
} 