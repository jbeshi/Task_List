resource "aws_cloudwatch_event_rule" "Daily" {
  name        = "Daily"
  description = "daily job to send uncompleted tasks email"
  schedule_expression = "cron(0 6 * * ? *)"

}

resource "aws_cloudwatch_event_target" "lambda" {
  rule      = "Daily"
  target_id = "DailyEmailLambda"
  arn       = "arn:aws:events:us-east-1:550632464207:rule/Daily"
}
