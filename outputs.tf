# ----------------
# DynamoDb Outputs
# ----------------

output "dynamodb" {
  value = {
    table_name = aws_dynamodb_table.users.name
    table_arn  = aws_dynamodb_table.users.arn
  }
}

# ----------------
# Lambda Outputs
# ----------------

output "lambda" {
  value = {
    lambda_function_name  = aws_lambda_function.test_lambda.function_name
    lambda_function_arn   = aws_lambda_function.test_lambda.arn
    dynamodb_table_name   = aws_dynamodb_table.users.name
    dynamodb_table_arn    = aws_dynamodb_table.users.arn
    invoke_lambda_command = "awslocal lambda invoke --function-name ${aws_lambda_function.test_lambda.function_name} output.json && cat output.json"
  }
}

# ----------------
# Logging Outputs
# ----------------

output "logging" {
  value = {
    log_group_name             = aws_cloudwatch_log_group.cloudwatch_log_group.name
    log_group_arn              = aws_cloudwatch_log_group.cloudwatch_log_group.arn
    iam_role_name              = aws_iam_role.iam_for_lambda.name
    iam_role_arn               = aws_iam_role.iam_for_lambda.arn
    iam_policy_arn             = aws_iam_policy.lambda_logging.arn
    iam_policy_name            = aws_iam_policy.lambda_logging.name
    iam_policy_document        = data.aws_iam_policy_document.lambda_logging.json
    iam_role_policy_attachment = aws_iam_role_policy_attachment.lambda_logs.policy_arn
  }
}

output "error_alarm" {
  value = {
    alarm_name = aws_cloudwatch_metric_alarm.lambda_error_alarm.alarm_name
    alarm_arn  = aws_cloudwatch_metric_alarm.lambda_error_alarm.arn
  }
}

output "sns" {
  value = {
    subscription_arn = aws_sns_topic_subscription.alert_email.arn
    topic_name       = aws_sns_topic.alert.name
    topic_arn        = aws_sns_topic.alert.arn
  }
}
