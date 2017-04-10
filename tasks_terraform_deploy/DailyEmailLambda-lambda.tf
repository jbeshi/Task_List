resource "aws_iam_role" "SESSender" {
  name = "SESSender"

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

resource "aws_lambda_function" "DailyEmailLambda" {
  filename         = "DailyEmailLambda-9e0e6c52-180f-44d2-87c4-4467e16b7919.zip"
  function_name    = "DailyEmailLambda"
  role             = "arn:aws:iam::550632464207:role/SESSender"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("DailyEmailLambda-9e0e6c52-180f-44d2-87c4-4467e16b7919.zip"))}"
  runtime		   =  "nodejs6.10"
}
