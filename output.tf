output "bucketName" { 
    value = aws_s3_bucket.s3bucket.bucket 
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

output "route53" {
    value = aws_route53_record.www.name
}

output "IPs" {
    value = aws_instance.ec2.*.public_ip #print out all 
}