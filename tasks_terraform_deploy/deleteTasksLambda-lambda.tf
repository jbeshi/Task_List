resource "aws_lambda_function" "deleteTasksLambda" {
  filename         = "deleteTaskLambda-cc29402a-d8ec-4478-816a-ab8a6599371c.zip"
  function_name    = "deleteTasksLambda"
  role             = "arn:aws:iam::550632464207:role/service-role/admin"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("deleteTaskLambda-cc29402a-d8ec-4478-816a-ab8a6599371c.zip"))}"
  runtime		   =  "nodejs6.10"
}
