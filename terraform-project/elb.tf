# Create a new load balancer
resource "aws_elb" "terpro" {
  name               = "terpro-terraform-elb"
  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]

#  access_logs {
#   bucket        = "foo"
#    bucket_prefix = "bar"
#    interval      = 60
#  }

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
    target              = "HTTP:80/"
    interval            = 30
  }

// ELB attachments
  instances                   = ["${aws_instance.first.id}", "${aws_instance.secon>  cross_zone_load_balancing   = true
  idle_timeout                = 40
#  connection_draining         = true
#  connection_draining_timeout = 400

  tags = {
    Name = "demopro-terraform-elb"
  }
}