resource "aws_dynamodb_table" "users" {
  name         = "user-logins"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "username"

  attribute {
    name = "username"
    type = "S"
  }

  tags = { Name = "tf-users-table" }
}
