resource "aws_autoscaling_group" "web_asg" {
  name = "web-asg"

  min_size             = 1
  desired_capacity     = 1
  max_size             = 2
  
  health_check_type    = "ELB"
  # load_balancers = [
  #   "${aws_lb.web_alb.id}"
  # ]

  # launch_configuration = "${aws_launch_configuration.web.name}"
  #  load_balancers = [
  #   "${aws_lb.web-alb.arn}" // Use the ARN (Amazon Resource Name) of the Load Balancer here, not the ID
  # ]

  launch_configuration = "${aws_launch_configuration.web.name}" // Use the name of the launch configuration, not just the object itself


  enabled_metrics = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupTotalInstances"
  ]

  metrics_granularity = "1Minute"

  vpc_zone_identifier  = [
    "${aws_subnet.public_us_east_1a.id}",
    "${aws_subnet.public_us_east_1b.id}"
  ]

  # Required to redeploy without an outage.
  lifecycle {
    create_before_destroy = true
  }

  tag {
    key                 = "Name"
    value               = "web"
    propagate_at_launch = true
  }

}