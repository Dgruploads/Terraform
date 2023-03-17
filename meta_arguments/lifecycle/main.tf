resource "aws_instance" "lifecycle_example_one" {
  ami           = var.ec2_image_one
  instance_type = var.ec2_instance_type
  
  tags          = local.common_tags
  
  lifecycle {
    create_before_destroy = true
  }
}
