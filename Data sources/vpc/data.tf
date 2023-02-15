data "aws_vpc" "existing_vpc" {
  filter {
    name  = "tag:Name"
    values = ["Default"]
  }
}
