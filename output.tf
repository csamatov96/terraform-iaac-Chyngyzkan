output "bucketName" { 
    value = aws_s3_bucket.s3bucket.bucket 
} 
output "instance_ip_addr" {
    value = aws_instance.ec2.private_ip
    description = "The private IP address of the main server instance."
}

output "sec_group" {
  value  = aws_security_group.sg.name #name of sg to refer to 
}

output "key_name" {
  description = "KEY"
 value       = aws_key_pair.keypair.key_name #name of the key resouce to refer to 
}

output "username" {
  value       = "ec2"
}

