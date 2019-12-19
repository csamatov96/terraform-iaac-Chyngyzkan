resource "aws_route53_record" "www" { 
  zone_id = "Z6XWWD56QDJWX"  #hosted zone of ur domain 
  name    = "www.ec2.csamatov.net" 
  type    = "A" 
  ttl     = "60" 
  records = ["IP"] 
} 