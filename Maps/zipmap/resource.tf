resource "aws_instance" "tomap_example" {
  for_each      = zipmap(var.image_id_keys,var.image_id_values)
  ami           = each.value
  instance_type = var.ec2_instance_type

  tags          = local.common_tags
}
