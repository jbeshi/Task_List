provider "aws" {
  access_key = "AKIAJVQQ2RU5UGWTTENA"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "notes"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"
  
  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "user"
    type = "S"
  }

  attribute {
    name = "description"
    type = "S"
  }

  attribute {
    name = "viewers"
    type = "SS"
  }

  attribute {
    name = "editors"
    type = "SS"
  }
}
