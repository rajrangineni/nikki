resource "aws_s3_bucket" "remote" {
    bucket = "state-remote-store-wertgfcvb"
  
}

resource "aws_dynamodb_table" "name" {
  name = "arjun-db-dynamo-dev-"
  hash_key = "Lock.ID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "Lock.ID"
    type = "S"
  }
  
  
}