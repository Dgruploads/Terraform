# This will use the default provider block
resource "aws_instance" "provider_example_one" {
  ami           = var.ec2_image_one
  instance_type = var.ec2_instance_type
  
  tags          = local.common_tags
}

# This will use the alternate provider block
resource "aws_instance" "provider_example_two" {
  provider      = aws.Oregon # Calling the alternate provider block.
  ami           = var.ec2_image_two          
  instance_type = var.ec2_instance_type

  tags          = local.common_tags
}
