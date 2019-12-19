resource "aws_route53_record" "www" { 
  zone_id = "Z6XWWD56QDJWX"  #hosted zone of ur domain 
  name    = "www.csamatov.net" #domain must exist beforehead
  type    = "A" 
  ttl     = "300" 
  records = [aws_instance.ec2[0].public_ip] #refering to the name of the resource    
} 