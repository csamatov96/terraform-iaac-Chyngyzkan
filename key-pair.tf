resource "aws_key_pair" "${var.key_name}" { 
  key_name   = "{var.key_name}" 
  public_key = "{file("{var.key_name_location}")}" 
} 