resource "aws_instance" "for_each_example" {
  for_each	= var.image_id
  ami           = each.value
  instance_type = var.instance_type

  tags = {
   Name = "server_${each.key}"
  }
}
