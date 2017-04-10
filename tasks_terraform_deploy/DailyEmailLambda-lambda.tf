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
  filename         = "DailyEmailLambda-5c861322-e548-4e00-9bd0-f033185292b3.zip"
  function_name    = "DailyEmailLambda"
  role             = "arn:aws:iam::550632464207:role/SESSender"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("DailyEmailLambda-5c861322-e548-4e00-9bd0-f033185292b3.zip"))}"
  runtime		   =  "nodejs6.10"
}