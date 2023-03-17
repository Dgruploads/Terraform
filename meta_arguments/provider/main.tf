resource "aws_instance" "provider_example_one" {
  ami           = var.ec2_image_one
  instance_type = var.ec2_instance_type
  
  tags          = local.common_tags
}

resource "aws_instance" "provider_example_two" {
  provider      = aws.Oregon
  ami           = var.ec2_image_two          
  instance_type = var.ec2_instance_type

  tags          = local.common_tags
}
