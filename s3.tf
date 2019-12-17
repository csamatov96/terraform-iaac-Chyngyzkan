resource "aws_s3_bucket" "s3bucket" { 
  bucket = "my-tf-test-bucket-class1" 
  acl    = "private" 

  tags = { 
    Name        = "My bucket" 
    Environment = "Dev" 
  } 
} 