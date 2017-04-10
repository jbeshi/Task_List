resource "aws_lambda_function" "createNote" {
  filename         = "createNote-d049c43a-06c0-4e27-8663-9423ccec10dc.zip"
  function_name    = "createNote"
  role             = "arn:aws:iam::550632464207:role/user"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("createNote-d049c43a-06c0-4e27-8663-9423ccec10dc.zip"))}"
  runtime		   =  "nodejs6.10"
}