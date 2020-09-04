resource "aws_ebs_volume" "new_ebs_volume" {
	availability_zone = "us-east-1a"
	size              = 8
	type              = "gp2"

	tags = {
		Name = "ebs-volume-terraform"
	}
}

resource "aws_volume_attachment" "ebs_volume_attachment" {
	device_name = "/dev/xvdh"
	volume_id   = aws_ebs_volume.new_ebs_volume.id
	instance_id = aws_instance.web_instance.id
}
