resource "aws_instance" "web_instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ec2_ami
  key_name      = "${data.aws_key_pair.existing_key_pair.key_name}"

  provisioner "file" {
    source      = "script.sh"
    destination = "/home/ubuntu/script.sh"

    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = "${file("/home/ubuntu/remote_exec/new_key.pem")}"
      host = "${aws_instance.web_instance.public_ip}"
      port = 22
    }
  }
}
