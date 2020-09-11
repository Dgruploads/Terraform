provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "user_data_example" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.custom_security_group.id]
  key_name      = var.key_name
  availability_zone = "us-east-1a"

  user_data = <<EOF
  #!/bin/bash
  sudo yum install httpd -y
  echo "<h1>This is deployed using terraform inline user data commands</h1>" | sudo tee /var/www/html/index.html
  sudo service httpd start
  EOF

  tags = {
    Name = "EC2_user_data_example"
  }
}
