

resource "aws_dynamodb_table" "basic-dynamodb-table-1" {
  name           = "tasks"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "user"
  range_key      = "description"

  attribute {
    name = "user"
    type = "S"
  }

  attribute {
    name = "description"
    type = "S"
  }

  attribute {
    name = "priority"
    type = "N"
  }

  attribute {
    name = "completed"
    type = "S"
  }
}