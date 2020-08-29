provider "aws" {
        profile = "default"
        region  = "us-east-1"
}

data "aws_vpc" "exiting" {

        filter {
                name    = "tag:Name"
                values  = ["Default"]
        }
}

resource "aws_subnet" "example" {
        vpc_id                  = "${data.aws_vpc.exiting.id}"
        cidr_block              = "172.31.0.0/20"
}
