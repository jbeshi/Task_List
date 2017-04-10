resource "aws_lambda_function" "getSharedNotes" {
  filename         = "getSharedNotes-5c0d1669-6765-4402-8b9c-9c273ea9f18f.zip"
  function_name    = "getSharedNotes"
  role             = "arn:aws:iam::550632464207:role/user"
  handler          = "index.handler"
  source_code_hash = "${base64sha256(file("getSharedNotes-5c0d1669-6765-4402-8b9c-9c273ea9f18f.zip"))}"
  runtime		   =  "nodejs6.10"
}