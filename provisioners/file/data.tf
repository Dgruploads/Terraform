data "aws_key_pair" "existing_key_pair" {
  key_name = var.ec2_key_name
}
