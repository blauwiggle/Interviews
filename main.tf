# ----------------
# ZIP
# ----------------

data "archive_file" "lambda" {
  type        = "zip"
  source_file = "lambda.py"
  output_path = "lambda_payload.zip"
}

# ----------------
# Lambda
# ----------------

resource "aws_lambda_function" "test_lambda" {
  filename         = data.archive_file.lambda.output_path
  function_name    = var.lambda_function_name
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "lambda.lambda_handler"
  runtime          = "python3.9"
  source_code_hash = data.archive_file.lambda.output_base64sha256

  environment {
    variables = {
      TABLE_NAME = aws_dynamodb_table.users.name
    }
  }

  logging_config {
    log_format = "Text"
  }

  depends_on = [
    aws_iam_role_policy_attachment.lambda_logs,
    aws_cloudwatch_log_group.cloudwatch_log_group,
  ]
}

# ----------------
# DynamoDB
# ----------------

resource "aws_dynamodb_table" "users" {
  name         = "users"
  hash_key     = "Id"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "Id"
    type = "N"
  }

  attribute {
    name = "SSO"
    type = "N"
  }

  attribute {
    name = "2FA"
    type = "N"
  }

  global_secondary_index {
    name            = "SSO-2FA-index"
    hash_key        = "SSO"
    range_key       = "2FA"
    projection_type = "ALL"
  }
}

# ----------------
# Populate
# ----------------

resource "aws_dynamodb_table_item" "users" {
  for_each   = { for item in local.dynamodb_items : item.Id.N => item }
  table_name = aws_dynamodb_table.users.name
  hash_key   = "Id"
  item       = jsonencode(each.value)
}
