resource "aws_lambda_function" "updateNote" {
  filename         = "updateNote-2b78a7eb-7a5d-4e5a-a25d-ee3eaeb86743.zip"
  function_name    = "updateNote"
  role             = "arn:aws:iam::550632464207:role/user"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("updateNote-2b78a7eb-7a5d-4e5a-a25d-ee3eaeb86743.zip"))}"
  runtime		   =  "nodejs6.10"
}