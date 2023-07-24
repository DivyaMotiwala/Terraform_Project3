resource "aws_launch_configuration" "web" {
  name_prefix = "web-"

  image_id = "${var.ami-id}"
  instance_type = "${var.instance-type}"
  key_name = "divya_terraform_keypair"

  security_groups = [ "${aws_security_group.allow_http_ssh.id}" ]
  associate_public_ip_address = true
  user_data = "${file("script.sh")}"

  lifecycle {
    create_before_destroy = true
  }
}

