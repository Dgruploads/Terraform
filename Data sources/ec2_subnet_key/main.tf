resource "aws_instance" "ec2_instance" {
  instance_type          = var.ec2_instance_type
  ami                    = var.ec2_ami
  vpc_security_group_ids = ["${data.aws_security_group.existing_security_group.id}"]
  subnet_id              = "${data.aws_subnet.existing_subnet.id}"
  key_name               = "${data.aws_key_pair.existing_key_pair.key_name}"
}
