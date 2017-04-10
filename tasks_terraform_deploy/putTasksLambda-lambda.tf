resource "aws_lambda_function" "putTasksLambda" {
  filename         = "putTaskLambda-5b3eac43-a324-4722-b4b5-70b7e24d3363.zip"
  function_name    = "putTasksLambda"
  role             = "arn:aws:iam::550632464207:role/service-role/admin"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("putTaskLambda-5b3eac43-a324-4722-b4b5-70b7e24d3363.zip"))}"
  runtime		   =  "nodejs6.10"
}