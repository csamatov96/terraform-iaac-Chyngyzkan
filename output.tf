output "bucketName" { 
    value = aws_s3_bucket.s3bucket.bucket 
å} 
output "instance_ip_addr" {
    value = aws_instance.ec2.private_ip
    description = "The private IP address of the main server instance."
}

