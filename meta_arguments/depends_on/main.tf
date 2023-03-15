resource "aws_s3_bucket" "example_bucket" {
  bucket = var.s3_bucket_name
  tags   = local.common_tags
}

resource "aws_db_instance" "example_db" {
  engine              = var.db_engine
  instance_class      = var.db_instance_type
  allocated_storage   = var.db_storage
  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = var.skip_snapshot
  tags                = local.common_tags
}

resource "aws_instance" "example_instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ec2_image
  tags          = local.common_tags
  
  depends_on    = [aws_s3_bucket.example_bucket, aws_db_instance.example_db]
}
