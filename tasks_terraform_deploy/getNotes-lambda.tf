resource "aws_iam_role" "admin" {
  name = "admin"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "getNotes" {
  filename         = "getNotes-b76346e8-b83e-431c-a352-e7e6ecc8b9ba.zip"
  function_name    = "getNotes"
  role             = "arn:aws:iam::550632464207:role/service-role/admin"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("getNotes-b76346e8-b83e-431c-a352-e7e6ecc8b9ba.zip"))}"
  runtime		   =  "nodejs6.10"
}