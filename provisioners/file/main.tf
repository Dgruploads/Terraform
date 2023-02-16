resource "aws_instance" "web_instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ec2_ami

  provisioner "file" {
    source      = "script.sh"
    destination = "/home/ubuntu/script.sh"

    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = "${file("/home/ubuntu/remote_exec/linux_key_1.pem")}"
      host = "${aws_instance.web_instance.public_ip}"
      port = 22
    }
  }
}
