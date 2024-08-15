resource "aws_cloudwatch_log_group" "cloudwatch_log_group" {
  name              = "/aws/lambda/${var.lambda_function_name}"
  retention_in_days = 14
}

resource "aws_cloudwatch_metric_alarm" "lambda_error_alarm" {
  alarm_name          = "LambdaErrorAlarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  period              = "60"
  statistic           = "Sum"
  threshold           = "1"

  dimensions = {
    FunctionName = aws_lambda_function.test_lambda.function_name
  }

  alarm_description = "Triggered when the Lambda function errors more than once within a minute"
  alarm_actions     = [aws_sns_topic.alert.arn]
}

resource "aws_sns_topic" "alert" {
  name = "lambda_alerts"
}

resource "aws_sns_topic_subscription" "alert_email" {
  topic_arn = aws_sns_topic.alert.arn
  protocol  = "email"
  endpoint  = "michael.vanhee@icloud.com"
}
