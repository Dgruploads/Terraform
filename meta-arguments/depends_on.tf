resource "aws_iam_role" "depends_on_example" {
name = "depends_on_role"
assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_instance_profile" "depends_on_example" {
role = aws_iam_role.depends_on_example.name
}

resource "aws_iam_role_policy" "depends_on_example" {
name = "depends_on_example"
role = aws_iam_role.depends_on_example.name
policy = jsonencode({
    "Statement" = [{
      "Action" = "s3:*",
      "Effect" = "Allow",
    }],
  })
}

resource "aws_instance" "depends_on_example" {
ami = var.image_id
instance_type = var.instance_type
iam_instance_profile = aws_iam_instance_profile.depends_on_example
depends_on = [aws_iam_role_policy.depends_on_example]
}
