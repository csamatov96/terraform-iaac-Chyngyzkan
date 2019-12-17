resource "aws_lb" "appLB" {
  name               = "test-applb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.sg.id}"] #
  subnets            = ["${aws_subnet.subnet.id}"]

  enable_deletion_protection = true

  access_logs {
    bucket  = "${aws_s3_bucket.s3bucket.bucket}"
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}