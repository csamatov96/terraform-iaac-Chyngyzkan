resource "aws_route53_record" "www" { 
  zone_id = "Z6XWWD56QDJWX"  #hosted zone of ur domain 
  name    = "www.ec2.csamatov.net" 
  type    = "A" 
  ttl     = "60" 
  records = ["aws_instance.ec2.public_ip"] #refering to the name of the resource 
} 