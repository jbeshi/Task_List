resource "aws_lambda_function" "getNoteByUser" {
  filename         = "getNoteByUser-a252958d-2c2e-4155-bb09-40af71f550cb.zip"
  function_name    = "getNoteByUser"
  role             = "arn:aws:iam::550632464207:role/user"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("getNoteByUser-a252958d-2c2e-4155-bb09-40af71f550cb.zip"))}"
  runtime		   =  "nodejs6.10"
}