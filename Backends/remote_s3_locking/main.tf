resource "aws_instance" "server" {
  count         = 2
  ami           = var.ec2_image
  instance_type = var.ec2_instance_type

  tags          = local.common_tags
}
