provider "aws" {
  profile = "default"
  region  = var.RegionName
}

resource "aws_instance" "cluster" {
  instance_type = var.InstanceType
  ami           = var.ImageAmi
  key_name	    = var.key_name
}

resource "null_resource" "remote_exec_demo" {
  depends_on = ["aws_instance.cluster"]

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = "${file("/home/ec2-user/remote_exec/linux-server-mac.pem")}"
    host = "${aws_instance.cluster.public_ip}"
    port = 22
  }

  provisioner "file" {
    source	= "script.sh"
    destination = "/home/ec2-user/script.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ec2-user/script.sh",
      "/home/ec2-user/script.sh"
    ]
  }
}
