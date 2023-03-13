resource "aws_instance" "tomap_example" {
  for_each      = tomap(var.image_id)
  ami           = each.value
  instance_type = var.ec2_instance_type

  tags          = local.common_tags
}
