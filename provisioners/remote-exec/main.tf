resource "aws_instance" "example_instance" {
  instance_type = var.ec2_instance_type
  ami           = var.ec2_ami
  key_name      = var.ec2_key_name

  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = "${file("/home/ubuntu/remote_exec/linux_key_1.pem")}"
    host = "${aws_instance.example_instance.public_ip}"
    port = 22
  }

  provisioner "file" {
    source  = "script.sh"
    destination = "/home/ubuntu/script.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/script.sh",
      "/home/ubuntu/script.sh"
    ]
  }
}
