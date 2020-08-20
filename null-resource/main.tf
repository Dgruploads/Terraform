provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "cluster" {
  instance_type = "t2.micro"
  ami           = "ami-0b898040803850657"
  count         = 4
}

resource "null_resource" "cluster" {
  # Changes to any instance of cluster will require re-provisioning.
  triggers = {
  	cluster_instance_ids = "${join(",", aws_instance.cluster.*.id)}"
  }

connection {
	host = "${element(aws_instance.cluster.*.public_ip, 0)}"
}  

provisioner "local-exec" {
	command = "terraform.sh ${join(" ",aws_instance.cluster.*.private_ip)}"
  }
}
