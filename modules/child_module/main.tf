module "child_module_example" {
  source                = "../root_module"
  ec2_image             = var.ec2_image
  ec2_instance_type     = var.ec2_instance_type
  ec2_vpc_id            = var.ec2_vpc_id
  s3_bucket_name        = var.s3_bucket_name  
  ec2_region            = var.ec2_region 
}
