resource "aws_lambda_function" "getTasksLambda" {
  filename         = "getTasksLambda-e3ac3ae5-b01f-4ad9-b11d-db850f3d2ead.zip"
  function_name    = "getTasksLambda"
  role             = "arn:aws:iam::550632464207:role/user"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("getTasksLambda-e3ac3ae5-b01f-4ad9-b11d-db850f3d2ead.zip"))}"
  runtime		   =  "nodejs6.10"
}