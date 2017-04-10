resource "aws_lambda_function" "postTasksLambda" {
  filename         = "postTaskLambda-f7455518-97f9-4164-ba1d-115c70665891.zip"
  function_name    = "postTasksLambda"
  role             = "arn:aws:iam::550632464207:role/service-role/admin"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("postTaskLambda-f7455518-97f9-4164-ba1d-115c70665891.zip"))}"
  runtime		   =  "nodejs6.10"
}