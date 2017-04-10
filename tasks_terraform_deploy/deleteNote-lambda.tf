resource "aws_iam_role" "user" {
  name = "user"

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

resource "aws_lambda_function" "deleteNote" {
  filename         = "deleteNote-8a033a2d-b324-4de0-ada3-0ef0a9e1d221.zip"
  function_name    = "deleteNote"
  role             = "arn:aws:iam::550632464207:role/user"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("deleteNote-8a033a2d-b324-4de0-ada3-0ef0a9e1d221.zip"))}"
  runtime		   =  "nodejs6.10"
}