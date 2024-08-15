# Table of Contents

- [TF Plan](#tf-plan)
- [TF Apply](#tf-apply)

## TF Plan

```bash
❯ tf plan
data.archive_file.lambda: Reading...
data.archive_file.lambda: Read complete after 0s [id=6bea0673e9e6037fa2d1dadbe14fe45b13e332c0]
data.aws_iam_policy_document.lambda_logging: Reading...
data.aws_iam_policy_document.assume_role: Reading...
aws_cloudwatch_log_group.cloudwatch_log_group: Refreshing state... [id=/aws/lambda/lambda_function_name]
aws_sns_topic.alert: Refreshing state... [id=arn:aws:sns:us-east-1:000000000000:lambda_alerts]
data.aws_iam_policy_document.lambda_logging: Read complete after 0s [id=16712114]
aws_dynamodb_table.users: Refreshing state... [id=users]
data.aws_iam_policy_document.assume_role: Read complete after 0s [id=2690255455]
aws_iam_policy.lambda_logging: Refreshing state... [id=arn:aws:iam::000000000000:policy/lambda_logging]
aws_iam_role.iam_for_lambda: Refreshing state... [id=iam_for_lambda]
aws_iam_role_policy_attachment.lambda_logs: Refreshing state... [id=iam_for_lambda-20240815150452781100000001]
aws_sns_topic_subscription.alert_email: Refreshing state... [id=arn:aws:sns:us-east-1:000000000000:lambda_alerts:ede19c97-fb1b-4e7d-ac4a-e675963f2b5c]
aws_iam_policy.dynamodb_policy: Refreshing state... [id=arn:aws:iam::000000000000:policy/DynamoDBLambdaPolicy]
aws_dynamodb_table_item.users["108"]: Refreshing state... [id=users|Id|108]
aws_lambda_function.test_lambda: Refreshing state... [id=lambda_function_name]
aws_dynamodb_table_item.users["107"]: Refreshing state... [id=users|Id|107]
aws_dynamodb_table_item.users["109"]: Refreshing state... [id=users|Id|109]
aws_dynamodb_table_item.users["106"]: Refreshing state... [id=users|Id|106]
aws_dynamodb_table_item.users["113"]: Refreshing state... [id=users|Id|113]
aws_dynamodb_table_item.users["110"]: Refreshing state... [id=users|Id|110]
aws_dynamodb_table_item.users["111"]: Refreshing state... [id=users|Id|111]
aws_dynamodb_table_item.users["101"]: Refreshing state... [id=users|Id|101]
aws_dynamodb_table_item.users["102"]: Refreshing state... [id=users|Id|102]
aws_dynamodb_table_item.users["112"]: Refreshing state... [id=users|Id|112]
aws_dynamodb_table_item.users["114"]: Refreshing state... [id=users|Id|114]
aws_dynamodb_table_item.users["115"]: Refreshing state... [id=users|Id|115]
aws_dynamodb_table_item.users["104"]: Refreshing state... [id=users|Id|104]
aws_dynamodb_table_item.users["105"]: Refreshing state... [id=users|Id|105]
aws_dynamodb_table_item.users["103"]: Refreshing state... [id=users|Id|103]
aws_iam_role_policy_attachment.lambda_attach: Refreshing state... [id=iam_for_lambda-20240815150453043500000002]
aws_cloudwatch_metric_alarm.lambda_error_alarm: Refreshing state... [id=LambdaErrorAlarm]

Note: Objects have changed outside of OpenTofu

OpenTofu detected the following changes made outside of OpenTofu since the last "tofu apply" which may have affected this plan:

# aws_cloudwatch_log_group.cloudwatch_log_group has been deleted
- resource "aws_cloudwatch_log_group" "cloudwatch_log_group" {
    - arn               = "arn:aws:logs:us-east-1:000000000000:log-group:/aws/lambda/lambda_function_name" -> null
      id                = "/aws/lambda/lambda_function_name"
    - name              = "/aws/lambda/lambda_function_name" -> null
      tags              = {}
      # (3 unchanged attributes hidden)
  }

# aws_cloudwatch_metric_alarm.lambda_error_alarm has been deleted
- resource "aws_cloudwatch_metric_alarm" "lambda_error_alarm" {
    - alarm_name                = "LambdaErrorAlarm" -> null
    - arn                       = "arn:aws:cloudwatch:us-east-1:000000000000:alarm:LambdaErrorAlarm" -> null
      id                        = "LambdaErrorAlarm"
      tags                      = {}
      # (16 unchanged attributes hidden)
  }

# aws_dynamodb_table.users has been deleted
- resource "aws_dynamodb_table" "users" {
    - arn                         = "arn:aws:dynamodb:us-east-1:000000000000:table/users" -> null
      id                          = "users"
    - name                        = "users" -> null
      tags                        = {}
      # (8 unchanged attributes hidden)

      # (6 unchanged blocks hidden)
  }

# aws_iam_policy.dynamodb_policy has been deleted
- resource "aws_iam_policy" "dynamodb_policy" {
    - arn              = "arn:aws:iam::000000000000:policy/DynamoDBLambdaPolicy" -> null
      id               = "arn:aws:iam::000000000000:policy/DynamoDBLambdaPolicy"
      name             = "DynamoDBLambdaPolicy"
      tags             = {}
      # (5 unchanged attributes hidden)
  }

# aws_iam_policy.lambda_logging has been deleted
- resource "aws_iam_policy" "lambda_logging" {
    - arn              = "arn:aws:iam::000000000000:policy/lambda_logging" -> null
      id               = "arn:aws:iam::000000000000:policy/lambda_logging"
    - name             = "lambda_logging" -> null
      tags             = {}
      # (6 unchanged attributes hidden)
  }

# aws_iam_role.iam_for_lambda has been deleted
- resource "aws_iam_role" "iam_for_lambda" {
    - arn                   = "arn:aws:iam::000000000000:role/iam_for_lambda" -> null
      id                    = "iam_for_lambda"
    - name                  = "iam_for_lambda" -> null
      tags                  = {}
      # (8 unchanged attributes hidden)
  }

# aws_iam_role_policy_attachment.lambda_logs has been deleted
- resource "aws_iam_role_policy_attachment" "lambda_logs" {
  id         = "iam_for_lambda-20240815150452781100000001"
    - policy_arn = "arn:aws:iam::000000000000:policy/lambda_logging" -> null
      # (1 unchanged attribute hidden)
  }

# aws_lambda_function.test_lambda has been deleted
- resource "aws_lambda_function" "test_lambda" {
    - arn                            = "arn:aws:lambda:us-east-1:000000000000:function:lambda_function_name" -> null
    - function_name                  = "lambda_function_name" -> null
      id                             = "lambda_function_name"
      tags                           = {}
      # (21 unchanged attributes hidden)

      # (4 unchanged blocks hidden)
  }

# aws_sns_topic.alert has been deleted
- resource "aws_sns_topic" "alert" {
    - arn                                      = "arn:aws:sns:us-east-1:000000000000:lambda_alerts" -> null
      id                                       = "arn:aws:sns:us-east-1:000000000000:lambda_alerts"
    - name                                     = "lambda_alerts" -> null
      tags                                     = {}
      # (11 unchanged attributes hidden)
  }

# aws_sns_topic_subscription.alert_email has been deleted
- resource "aws_sns_topic_subscription" "alert_email" {
    - arn                             = "arn:aws:sns:us-east-1:000000000000:lambda_alerts:ede19c97-fb1b-4e7d-ac4a-e675963f2b5c" -> null
      id                              = "arn:aws:sns:us-east-1:000000000000:lambda_alerts:ede19c97-fb1b-4e7d-ac4a-e675963f2b5c"
      # (9 unchanged attributes hidden)
  }


Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the following plan may include actions to
undo or respond to these changes.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

OpenTofu used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
+ create

OpenTofu will perform the following actions:

# aws_cloudwatch_log_group.cloudwatch_log_group will be created
+ resource "aws_cloudwatch_log_group" "cloudwatch_log_group" {
    + arn               = (known after apply)
    + id                = (known after apply)
    + log_group_class   = (known after apply)
    + name              = "/aws/lambda/lambda_function_name"
    + name_prefix       = (known after apply)
    + retention_in_days = 14
    + skip_destroy      = false
    + tags_all          = (known after apply)
      }

# aws_cloudwatch_metric_alarm.lambda_error_alarm will be created
+ resource "aws_cloudwatch_metric_alarm" "lambda_error_alarm" {
    + actions_enabled                       = true
    + alarm_actions                         = (known after apply)
    + alarm_description                     = "Triggered when the Lambda function errors more than once within a minute"
    + alarm_name                            = "LambdaErrorAlarm"
    + arn                                   = (known after apply)
    + comparison_operator                   = "GreaterThanThreshold"
    + dimensions                            = {
        + "FunctionName" = "lambda_function_name"
          }
    + evaluate_low_sample_count_percentiles = (known after apply)
    + evaluation_periods                    = 1
    + id                                    = (known after apply)
    + metric_name                           = "Errors"
    + namespace                             = "AWS/Lambda"
    + period                                = 60
    + statistic                             = "Sum"
    + tags_all                              = (known after apply)
    + threshold                             = 1
    + treat_missing_data                    = "missing"
      }

# aws_dynamodb_table.users will be created
+ resource "aws_dynamodb_table" "users" {
    + arn              = (known after apply)
    + billing_mode     = "PAY_PER_REQUEST"
    + hash_key         = "Id"
    + id               = (known after apply)
    + name             = "users"
    + read_capacity    = (known after apply)
    + stream_arn       = (known after apply)
    + stream_label     = (known after apply)
    + stream_view_type = (known after apply)
    + tags_all         = (known after apply)
    + write_capacity   = (known after apply)

    + attribute {
        + name = "2FA"
        + type = "N"
          }
    + attribute {
        + name = "Id"
        + type = "N"
          }
    + attribute {
        + name = "SSO"
        + type = "N"
          }

    + global_secondary_index {
        + hash_key           = "SSO"
        + name               = "SSO-2FA-index"
        + non_key_attributes = []
        + projection_type    = "ALL"
        + range_key          = "2FA"
          }
          }

# aws_dynamodb_table_item.users["101"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "1"
      }
      + Email = {
      + S = "alice@example.com"
      }
      + Id    = {
      + N = "101"
      }
      + Name  = {
      + S = "Alice Smith"
      }
      + SSO   = {
      + N = "1"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["102"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "0"
      }
      + Email = {
      + S = "bob@example.com"
      }
      + Id    = {
      + N = "102"
      }
      + Name  = {
      + S = "Bob Johnson"
      }
      + SSO   = {
      + N = "1"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["103"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "1"
      }
      + Email = {
      + S = "charlie@example.com"
      }
      + Id    = {
      + N = "103"
      }
      + Name  = {
      + S = "Charlie Brown"
      }
      + SSO   = {
      + N = "0"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["104"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "0"
      }
      + Email = {
      + S = "diana@example.com"
      }
      + Id    = {
      + N = "104"
      }
      + Name  = {
      + S = "Diana Prince"
      }
      + SSO   = {
      + N = "0"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["105"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "1"
      }
      + Email = {
      + S = "ethan@example.com"
      }
      + Id    = {
      + N = "105"
      }
      + Name  = {
      + S = "Ethan Hunt"
      }
      + SSO   = {
      + N = "1"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["106"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "0"
      }
      + Email = {
      + S = "fiona@example.com"
      }
      + Id    = {
      + N = "106"
      }
      + Name  = {
      + S = "Fiona Gallagher"
      }
      + SSO   = {
      + N = "1"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["107"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "1"
      }
      + Email = {
      + S = "george@example.com"
      }
      + Id    = {
      + N = "107"
      }
      + Name  = {
      + S = "George Washington"
      }
      + SSO   = {
      + N = "0"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["108"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "0"
      }
      + Email = {
      + S = "hannah@example.com"
      }
      + Id    = {
      + N = "108"
      }
      + Name  = {
      + S = "Hannah Montana"
      }
      + SSO   = {
      + N = "0"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["109"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "1"
      }
      + Email = {
      + S = "ian@example.com"
      }
      + Id    = {
      + N = "109"
      }
      + Name  = {
      + S = "Ian Malcolm"
      }
      + SSO   = {
      + N = "1"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["110"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "0"
      }
      + Email = {
      + S = "jessica@example.com"
      }
      + Id    = {
      + N = "110"
      }
      + Name  = {
      + S = "Jessica Jones"
      }
      + SSO   = {
      + N = "1"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["111"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "1"
      }
      + Email = {
      + S = "kyle@example.com"
      }
      + Id    = {
      + N = "111"
      }
      + Name  = {
      + S = "Kyle Reese"
      }
      + SSO   = {
      + N = "0"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["112"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "0"
      }
      + Email = {
      + S = "lara@example.com"
      }
      + Id    = {
      + N = "112"
      }
      + Name  = {
      + S = "Lara Croft"
      }
      + SSO   = {
      + N = "0"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["113"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "1"
      }
      + Email = {
      + S = "marty@example.com"
      }
      + Id    = {
      + N = "113"
      }
      + Name  = {
      + S = "Marty McFly"
      }
      + SSO   = {
      + N = "1"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["114"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "0"
      }
      + Email = {
      + S = "nancy@example.com"
      }
      + Id    = {
      + N = "114"
      }
      + Name  = {
      + S = "Nancy Drew"
      }
      + SSO   = {
      + N = "1"
      }
      }
      )
    + table_name = "users"
      }

# aws_dynamodb_table_item.users["115"] will be created
+ resource "aws_dynamodb_table_item" "users" {
    + hash_key   = "Id"
    + id         = (known after apply)
    + item       = jsonencode(
      {
      + "2FA" = {
      + N = "1"
      }
      + Email = {
      + S = "oscar@example.com"
      }
      + Id    = {
      + N = "115"
      }
      + Name  = {
      + S = "Oscar Wilde"
      }
      + SSO   = {
      + N = "0"
      }
      }
      )
    + table_name = "users"
      }

# aws_iam_policy.dynamodb_policy will be created
+ resource "aws_iam_policy" "dynamodb_policy" {
    + arn              = (known after apply)
    + attachment_count = (known after apply)
    + id               = (known after apply)
    + name             = "DynamoDBLambdaPolicy"
    + name_prefix      = (known after apply)
    + path             = "/"
    + policy           = (known after apply)
    + policy_id        = (known after apply)
    + tags_all         = (known after apply)
      }

# aws_iam_policy.lambda_logging will be created
+ resource "aws_iam_policy" "lambda_logging" {
    + arn              = (known after apply)
    + attachment_count = (known after apply)
    + description      = "IAM policy for logging from a lambda"
    + id               = (known after apply)
    + name             = "lambda_logging"
    + name_prefix      = (known after apply)
    + path             = "/"
    + policy           = jsonencode(
      {
      + Statement = [
      + {
      + Action   = [
      + "logs:PutLogEvents",
      + "logs:CreateLogStream",
      + "logs:CreateLogGroup",
      ]
      + Effect   = "Allow"
      + Resource = "arn:aws:logs:*:*:*"
      },
      ]
      + Version   = "2012-10-17"
      }
      )
    + policy_id        = (known after apply)
    + tags_all         = (known after apply)
      }

# aws_iam_role.iam_for_lambda will be created
+ resource "aws_iam_role" "iam_for_lambda" {
    + arn                   = (known after apply)
    + assume_role_policy    = jsonencode(
      {
      + Statement = [
      + {
      + Action    = "sts:AssumeRole"
      + Effect    = "Allow"
      + Principal = {
      + Service = "lambda.amazonaws.com"
      }
      },
      ]
      + Version   = "2012-10-17"
      }
      )
    + create_date           = (known after apply)
    + force_detach_policies = false
    + id                    = (known after apply)
    + managed_policy_arns   = (known after apply)
    + max_session_duration  = 3600
    + name                  = "iam_for_lambda"
    + name_prefix           = (known after apply)
    + path                  = "/"
    + tags_all              = (known after apply)
    + unique_id             = (known after apply)
      }

# aws_iam_role_policy_attachment.lambda_attach will be created
+ resource "aws_iam_role_policy_attachment" "lambda_attach" {
    + id         = (known after apply)
    + policy_arn = (known after apply)
    + role       = "iam_for_lambda"
      }

# aws_iam_role_policy_attachment.lambda_logs will be created
+ resource "aws_iam_role_policy_attachment" "lambda_logs" {
    + id         = (known after apply)
    + policy_arn = (known after apply)
    + role       = "iam_for_lambda"
      }

# aws_lambda_function.test_lambda will be created
+ resource "aws_lambda_function" "test_lambda" {
    + architectures                  = (known after apply)
    + arn                            = (known after apply)
    + code_sha256                    = (known after apply)
    + filename                       = "lambda_payload.zip"
    + function_name                  = "lambda_function_name"
    + handler                        = "lambda.lambda_handler"
    + id                             = (known after apply)
    + invoke_arn                     = (known after apply)
    + last_modified                  = (known after apply)
    + memory_size                    = 128
    + package_type                   = "Zip"
    + publish                        = false
    + qualified_arn                  = (known after apply)
    + qualified_invoke_arn           = (known after apply)
    + reserved_concurrent_executions = -1
    + role                           = (known after apply)
    + runtime                        = "python3.9"
    + signing_job_arn                = (known after apply)
    + signing_profile_version_arn    = (known after apply)
    + skip_destroy                   = false
    + source_code_hash               = "HGP6+WJtjBba/X2AK9ZI/8YAR+C2M9lxUTZkP14p4CE="
    + source_code_size               = (known after apply)
    + tags_all                       = (known after apply)
    + timeout                        = 3
    + version                        = (known after apply)

    + environment {
        + variables = {
            + "TABLE_NAME" = "users"
              }
              }

    + logging_config {
        + log_format = "Text"
        + log_group  = (known after apply)
          }
          }

# aws_sns_topic.alert will be created
+ resource "aws_sns_topic" "alert" {
    + arn                         = (known after apply)
    + beginning_archive_time      = (known after apply)
    + content_based_deduplication = false
    + fifo_topic                  = false
    + id                          = (known after apply)
    + name                        = "lambda_alerts"
    + name_prefix                 = (known after apply)
    + owner                       = (known after apply)
    + policy                      = (known after apply)
    + signature_version           = (known after apply)
    + tags_all                    = (known after apply)
    + tracing_config              = (known after apply)
      }

# aws_sns_topic_subscription.alert_email will be created
+ resource "aws_sns_topic_subscription" "alert_email" {
    + arn                             = (known after apply)
    + confirmation_timeout_in_minutes = 1
    + confirmation_was_authenticated  = (known after apply)
    + endpoint                        = "michael.vanhee@icloud.com"
    + endpoint_auto_confirms          = false
    + filter_policy_scope             = (known after apply)
    + id                              = (known after apply)
    + owner_id                        = (known after apply)
    + pending_confirmation            = (known after apply)
    + protocol                        = "email"
    + raw_message_delivery            = false
    + topic_arn                       = (known after apply)
      }

Plan: 26 to add, 0 to change, 0 to destroy.

Changes to Outputs:
+ dynamodb             = {
    + table_arn  = (known after apply)
    + table_name = "users"
      }
      ~ error_alarm          = {
      ~ alarm_arn  = "arn:aws:cloudwatch:us-east-1:000000000000:alarm:LambdaErrorAlarm" -> (known after apply)
      # (1 unchanged attribute hidden)
  }
+ lambda               = {
    + dynamodb_table_arn    = (known after apply)
    + dynamodb_table_name   = "users"
    + invoke_lambda_command = "awslocal lambda invoke --function-name lambda_function_name output.json && cat output.json"
    + lambda_function_arn   = (known after apply)
    + lambda_function_name  = "lambda_function_name"
      }
- lambda_function_name = {
    - dynamodb_table_arn    = "arn:aws:dynamodb:us-east-1:000000000000:table/users"
    - dynamodb_table_name   = "users"
    - invoke_lambda_command = "awslocal lambda invoke --function-name lambda_function_name output.json && cat output.json"
    - lambda_function_arn   = "arn:aws:lambda:us-east-1:000000000000:function:lambda_function_name"
    - lambda_function_name  = "lambda_function_name"
      } -> null
      ~ logging              = {
      ~ iam_policy_arn             = "arn:aws:iam::000000000000:policy/lambda_logging" -> (known after apply)
      ~ iam_role_arn               = "arn:aws:iam::000000000000:role/iam_for_lambda" -> (known after apply)
      ~ iam_role_policy_attachment = "arn:aws:iam::000000000000:policy/lambda_logging" -> (known after apply)
      ~ log_group_arn              = "arn:aws:logs:us-east-1:000000000000:log-group:/aws/lambda/lambda_function_name" -> (known after apply)
      # (4 unchanged attributes hidden)
  }
+ sns                  = {
    + subscription_arn = (known after apply)
    + topic_arn        = (known after apply)
    + topic_name       = "lambda_alerts"
      }
- sns_subscription     = {
    - subscription_arn = "arn:aws:sns:us-east-1:000000000000:lambda_alerts:ede19c97-fb1b-4e7d-ac4a-e675963f2b5c"
      } -> null
- sns_topic            = {
    - topic_arn  = "arn:aws:sns:us-east-1:000000000000:lambda_alerts"
    - topic_name = "lambda_alerts"
      } -> null
- table_name           = "users" -> null
  ╷
  │ Warning: AWS account ID not found for provider
  │
  │   with provider["registry.opentofu.org/hashicorp/aws"],
  │   on providers.tf line 1, in provider "aws":
  │    1: provider "aws" {
  │
  │ See https://registry.terraform.io/providers/hashicorp/aws/latest/docs#skip_requesting_account_id for implications.
  ╵

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so OpenTofu can't guarantee to take exactly these actions if you run "tofu apply" now.```
```

## TF Apply

```bash
❯ tf apply
data.archive_file.lambda: Reading...
data.archive_file.lambda: Read complete after 0s [id=6bea0673e9e6037fa2d1dadbe14fe45b13e332c0]
data.aws_iam_policy_document.assume_role: Reading...
data.aws_iam_policy_document.lambda_logging: Reading...
aws_cloudwatch_log_group.cloudwatch_log_group: Refreshing state... [id=/aws/lambda/lambda_function_name]
aws_sns_topic.alert: Refreshing state... [id=arn:aws:sns:us-east-1:000000000000:lambda_alerts]
aws_dynamodb_table.users: Refreshing state... [id=users]
data.aws_iam_policy_document.lambda_logging: Read complete after 0s [id=16712114]
data.aws_iam_policy_document.assume_role: Read complete after 0s [id=2690255455]
aws_iam_policy.lambda_logging: Refreshing state... [id=arn:aws:iam::000000000000:policy/lambda_logging]
aws_iam_role.iam_for_lambda: Refreshing state... [id=iam_for_lambda]
aws_sns_topic_subscription.alert_email: Refreshing state... [id=arn:aws:sns:us-east-1:000000000000:lambda_alerts:ede19c97-fb1b-4e7d-ac4a-e675963f2b5c]
aws_iam_role_policy_attachment.lambda_logs: Refreshing state... [id=iam_for_lambda-20240815150452781100000001]
aws_iam_policy.dynamodb_policy: Refreshing state... [id=arn:aws:iam::000000000000:policy/DynamoDBLambdaPolicy]
aws_lambda_function.test_lambda: Refreshing state... [id=lambda_function_name]
aws_dynamodb_table_item.users["104"]: Refreshing state... [id=users|Id|104]
aws_dynamodb_table_item.users["103"]: Refreshing state... [id=users|Id|103]
aws_dynamodb_table_item.users["114"]: Refreshing state... [id=users|Id|114]
aws_dynamodb_table_item.users["112"]: Refreshing state... [id=users|Id|112]
aws_dynamodb_table_item.users["108"]: Refreshing state... [id=users|Id|108]
aws_dynamodb_table_item.users["107"]: Refreshing state... [id=users|Id|107]
aws_dynamodb_table_item.users["110"]: Refreshing state... [id=users|Id|110]
aws_dynamodb_table_item.users["113"]: Refreshing state... [id=users|Id|113]
aws_dynamodb_table_item.users["106"]: Refreshing state... [id=users|Id|106]
aws_dynamodb_table_item.users["101"]: Refreshing state... [id=users|Id|101]
aws_dynamodb_table_item.users["105"]: Refreshing state... [id=users|Id|105]
aws_dynamodb_table_item.users["115"]: Refreshing state... [id=users|Id|115]
aws_dynamodb_table_item.users["102"]: Refreshing state... [id=users|Id|102]
aws_dynamodb_table_item.users["111"]: Refreshing state... [id=users|Id|111]
aws_dynamodb_table_item.users["109"]: Refreshing state... [id=users|Id|109]
aws_iam_role_policy_attachment.lambda_attach: Refreshing state... [id=iam_for_lambda-20240815150453043500000002]
aws_cloudwatch_metric_alarm.lambda_error_alarm: Refreshing state... [id=LambdaErrorAlarm]

Note: Objects have changed outside of OpenTofu

OpenTofu detected the following changes made outside of OpenTofu since the last "tofu apply" which may have affected this plan:

  # aws_cloudwatch_log_group.cloudwatch_log_group has been deleted
  - resource "aws_cloudwatch_log_group" "cloudwatch_log_group" {
      - arn               = "arn:aws:logs:us-east-1:000000000000:log-group:/aws/lambda/lambda_function_name" -> null
        id                = "/aws/lambda/lambda_function_name"
      - name              = "/aws/lambda/lambda_function_name" -> null
        tags              = {}
        # (3 unchanged attributes hidden)
    }

  # aws_cloudwatch_metric_alarm.lambda_error_alarm has been deleted
  - resource "aws_cloudwatch_metric_alarm" "lambda_error_alarm" {
      - alarm_name                = "LambdaErrorAlarm" -> null
      - arn                       = "arn:aws:cloudwatch:us-east-1:000000000000:alarm:LambdaErrorAlarm" -> null
        id                        = "LambdaErrorAlarm"
        tags                      = {}
        # (16 unchanged attributes hidden)
    }

  # aws_dynamodb_table.users has been deleted
  - resource "aws_dynamodb_table" "users" {
      - arn                         = "arn:aws:dynamodb:us-east-1:000000000000:table/users" -> null
        id                          = "users"
      - name                        = "users" -> null
        tags                        = {}
        # (8 unchanged attributes hidden)

        # (6 unchanged blocks hidden)
    }

  # aws_iam_policy.dynamodb_policy has been deleted
  - resource "aws_iam_policy" "dynamodb_policy" {
      - arn              = "arn:aws:iam::000000000000:policy/DynamoDBLambdaPolicy" -> null
        id               = "arn:aws:iam::000000000000:policy/DynamoDBLambdaPolicy"
        name             = "DynamoDBLambdaPolicy"
        tags             = {}
        # (5 unchanged attributes hidden)
    }

  # aws_iam_policy.lambda_logging has been deleted
  - resource "aws_iam_policy" "lambda_logging" {
      - arn              = "arn:aws:iam::000000000000:policy/lambda_logging" -> null
        id               = "arn:aws:iam::000000000000:policy/lambda_logging"
      - name             = "lambda_logging" -> null
        tags             = {}
        # (6 unchanged attributes hidden)
    }

  # aws_iam_role.iam_for_lambda has been deleted
  - resource "aws_iam_role" "iam_for_lambda" {
      - arn                   = "arn:aws:iam::000000000000:role/iam_for_lambda" -> null
        id                    = "iam_for_lambda"
      - name                  = "iam_for_lambda" -> null
        tags                  = {}
        # (8 unchanged attributes hidden)
    }

  # aws_iam_role_policy_attachment.lambda_logs has been deleted
  - resource "aws_iam_role_policy_attachment" "lambda_logs" {
        id         = "iam_for_lambda-20240815150452781100000001"
      - policy_arn = "arn:aws:iam::000000000000:policy/lambda_logging" -> null
        # (1 unchanged attribute hidden)
    }

  # aws_lambda_function.test_lambda has been deleted
  - resource "aws_lambda_function" "test_lambda" {
      - arn                            = "arn:aws:lambda:us-east-1:000000000000:function:lambda_function_name" -> null
      - function_name                  = "lambda_function_name" -> null
        id                             = "lambda_function_name"
        tags                           = {}
        # (21 unchanged attributes hidden)

        # (4 unchanged blocks hidden)
    }

  # aws_sns_topic.alert has been deleted
  - resource "aws_sns_topic" "alert" {
      - arn                                      = "arn:aws:sns:us-east-1:000000000000:lambda_alerts" -> null
        id                                       = "arn:aws:sns:us-east-1:000000000000:lambda_alerts"
      - name                                     = "lambda_alerts" -> null
        tags                                     = {}
        # (11 unchanged attributes hidden)
    }

  # aws_sns_topic_subscription.alert_email has been deleted
  - resource "aws_sns_topic_subscription" "alert_email" {
      - arn                             = "arn:aws:sns:us-east-1:000000000000:lambda_alerts:ede19c97-fb1b-4e7d-ac4a-e675963f2b5c" -> null
        id                              = "arn:aws:sns:us-east-1:000000000000:lambda_alerts:ede19c97-fb1b-4e7d-ac4a-e675963f2b5c"
        # (9 unchanged attributes hidden)
    }


Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the following plan may include actions to
undo or respond to these changes.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

OpenTofu used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

OpenTofu will perform the following actions:

  # aws_cloudwatch_log_group.cloudwatch_log_group will be created
  + resource "aws_cloudwatch_log_group" "cloudwatch_log_group" {
      + arn               = (known after apply)
      + id                = (known after apply)
      + log_group_class   = (known after apply)
      + name              = "/aws/lambda/lambda_function_name"
      + name_prefix       = (known after apply)
      + retention_in_days = 14
      + skip_destroy      = false
      + tags_all          = (known after apply)
    }

  # aws_cloudwatch_metric_alarm.lambda_error_alarm will be created
  + resource "aws_cloudwatch_metric_alarm" "lambda_error_alarm" {
      + actions_enabled                       = true
      + alarm_actions                         = (known after apply)
      + alarm_description                     = "Triggered when the Lambda function errors more than once within a minute"
      + alarm_name                            = "LambdaErrorAlarm"
      + arn                                   = (known after apply)
      + comparison_operator                   = "GreaterThanThreshold"
      + dimensions                            = {
          + "FunctionName" = "lambda_function_name"
        }
      + evaluate_low_sample_count_percentiles = (known after apply)
      + evaluation_periods                    = 1
      + id                                    = (known after apply)
      + metric_name                           = "Errors"
      + namespace                             = "AWS/Lambda"
      + period                                = 60
      + statistic                             = "Sum"
      + tags_all                              = (known after apply)
      + threshold                             = 1
      + treat_missing_data                    = "missing"
    }

  # aws_dynamodb_table.users will be created
  + resource "aws_dynamodb_table" "users" {
      + arn              = (known after apply)
      + billing_mode     = "PAY_PER_REQUEST"
      + hash_key         = "Id"
      + id               = (known after apply)
      + name             = "users"
      + read_capacity    = (known after apply)
      + stream_arn       = (known after apply)
      + stream_label     = (known after apply)
      + stream_view_type = (known after apply)
      + tags_all         = (known after apply)
      + write_capacity   = (known after apply)

      + attribute {
          + name = "2FA"
          + type = "N"
        }
      + attribute {
          + name = "Id"
          + type = "N"
        }
      + attribute {
          + name = "SSO"
          + type = "N"
        }

      + global_secondary_index {
          + hash_key           = "SSO"
          + name               = "SSO-2FA-index"
          + non_key_attributes = []
          + projection_type    = "ALL"
          + range_key          = "2FA"
        }
    }

  # aws_dynamodb_table_item.users["101"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "1"
                }
              + Email = {
                  + S = "alice@example.com"
                }
              + Id    = {
                  + N = "101"
                }
              + Name  = {
                  + S = "Alice Smith"
                }
              + SSO   = {
                  + N = "1"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["102"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "0"
                }
              + Email = {
                  + S = "bob@example.com"
                }
              + Id    = {
                  + N = "102"
                }
              + Name  = {
                  + S = "Bob Johnson"
                }
              + SSO   = {
                  + N = "1"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["103"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "1"
                }
              + Email = {
                  + S = "charlie@example.com"
                }
              + Id    = {
                  + N = "103"
                }
              + Name  = {
                  + S = "Charlie Brown"
                }
              + SSO   = {
                  + N = "0"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["104"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "0"
                }
              + Email = {
                  + S = "diana@example.com"
                }
              + Id    = {
                  + N = "104"
                }
              + Name  = {
                  + S = "Diana Prince"
                }
              + SSO   = {
                  + N = "0"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["105"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "1"
                }
              + Email = {
                  + S = "ethan@example.com"
                }
              + Id    = {
                  + N = "105"
                }
              + Name  = {
                  + S = "Ethan Hunt"
                }
              + SSO   = {
                  + N = "1"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["106"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "0"
                }
              + Email = {
                  + S = "fiona@example.com"
                }
              + Id    = {
                  + N = "106"
                }
              + Name  = {
                  + S = "Fiona Gallagher"
                }
              + SSO   = {
                  + N = "1"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["107"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "1"
                }
              + Email = {
                  + S = "george@example.com"
                }
              + Id    = {
                  + N = "107"
                }
              + Name  = {
                  + S = "George Washington"
                }
              + SSO   = {
                  + N = "0"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["108"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "0"
                }
              + Email = {
                  + S = "hannah@example.com"
                }
              + Id    = {
                  + N = "108"
                }
              + Name  = {
                  + S = "Hannah Montana"
                }
              + SSO   = {
                  + N = "0"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["109"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "1"
                }
              + Email = {
                  + S = "ian@example.com"
                }
              + Id    = {
                  + N = "109"
                }
              + Name  = {
                  + S = "Ian Malcolm"
                }
              + SSO   = {
                  + N = "1"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["110"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "0"
                }
              + Email = {
                  + S = "jessica@example.com"
                }
              + Id    = {
                  + N = "110"
                }
              + Name  = {
                  + S = "Jessica Jones"
                }
              + SSO   = {
                  + N = "1"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["111"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "1"
                }
              + Email = {
                  + S = "kyle@example.com"
                }
              + Id    = {
                  + N = "111"
                }
              + Name  = {
                  + S = "Kyle Reese"
                }
              + SSO   = {
                  + N = "0"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["112"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "0"
                }
              + Email = {
                  + S = "lara@example.com"
                }
              + Id    = {
                  + N = "112"
                }
              + Name  = {
                  + S = "Lara Croft"
                }
              + SSO   = {
                  + N = "0"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["113"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "1"
                }
              + Email = {
                  + S = "marty@example.com"
                }
              + Id    = {
                  + N = "113"
                }
              + Name  = {
                  + S = "Marty McFly"
                }
              + SSO   = {
                  + N = "1"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["114"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "0"
                }
              + Email = {
                  + S = "nancy@example.com"
                }
              + Id    = {
                  + N = "114"
                }
              + Name  = {
                  + S = "Nancy Drew"
                }
              + SSO   = {
                  + N = "1"
                }
            }
        )
      + table_name = "users"
    }

  # aws_dynamodb_table_item.users["115"] will be created
  + resource "aws_dynamodb_table_item" "users" {
      + hash_key   = "Id"
      + id         = (known after apply)
      + item       = jsonencode(
            {
              + "2FA" = {
                  + N = "1"
                }
              + Email = {
                  + S = "oscar@example.com"
                }
              + Id    = {
                  + N = "115"
                }
              + Name  = {
                  + S = "Oscar Wilde"
                }
              + SSO   = {
                  + N = "0"
                }
            }
        )
      + table_name = "users"
    }

  # aws_iam_policy.dynamodb_policy will be created
  + resource "aws_iam_policy" "dynamodb_policy" {
      + arn              = (known after apply)
      + attachment_count = (known after apply)
      + id               = (known after apply)
      + name             = "DynamoDBLambdaPolicy"
      + name_prefix      = (known after apply)
      + path             = "/"
      + policy           = (known after apply)
      + policy_id        = (known after apply)
      + tags_all         = (known after apply)
    }

  # aws_iam_policy.lambda_logging will be created
  + resource "aws_iam_policy" "lambda_logging" {
      + arn              = (known after apply)
      + attachment_count = (known after apply)
      + description      = "IAM policy for logging from a lambda"
      + id               = (known after apply)
      + name             = "lambda_logging"
      + name_prefix      = (known after apply)
      + path             = "/"
      + policy           = jsonencode(
            {
              + Statement = [
                  + {
                      + Action   = [
                          + "logs:PutLogEvents",
                          + "logs:CreateLogStream",
                          + "logs:CreateLogGroup",
                        ]
                      + Effect   = "Allow"
                      + Resource = "arn:aws:logs:*:*:*"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + policy_id        = (known after apply)
      + tags_all         = (known after apply)
    }

  # aws_iam_role.iam_for_lambda will be created
  + resource "aws_iam_role" "iam_for_lambda" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "lambda.amazonaws.com"
                        }
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = "iam_for_lambda"
      + name_prefix           = (known after apply)
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)
    }

  # aws_iam_role_policy_attachment.lambda_attach will be created
  + resource "aws_iam_role_policy_attachment" "lambda_attach" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = "iam_for_lambda"
    }

  # aws_iam_role_policy_attachment.lambda_logs will be created
  + resource "aws_iam_role_policy_attachment" "lambda_logs" {
      + id         = (known after apply)
      + policy_arn = (known after apply)
      + role       = "iam_for_lambda"
    }

  # aws_lambda_function.test_lambda will be created
  + resource "aws_lambda_function" "test_lambda" {
      + architectures                  = (known after apply)
      + arn                            = (known after apply)
      + code_sha256                    = (known after apply)
      + filename                       = "lambda_payload.zip"
      + function_name                  = "lambda_function_name"
      + handler                        = "lambda.lambda_handler"
      + id                             = (known after apply)
      + invoke_arn                     = (known after apply)
      + last_modified                  = (known after apply)
      + memory_size                    = 128
      + package_type                   = "Zip"
      + publish                        = false
      + qualified_arn                  = (known after apply)
      + qualified_invoke_arn           = (known after apply)
      + reserved_concurrent_executions = -1
      + role                           = (known after apply)
      + runtime                        = "python3.9"
      + signing_job_arn                = (known after apply)
      + signing_profile_version_arn    = (known after apply)
      + skip_destroy                   = false
      + source_code_hash               = "HGP6+WJtjBba/X2AK9ZI/8YAR+C2M9lxUTZkP14p4CE="
      + source_code_size               = (known after apply)
      + tags_all                       = (known after apply)
      + timeout                        = 3
      + version                        = (known after apply)

      + environment {
          + variables = {
              + "TABLE_NAME" = "users"
            }
        }

      + logging_config {
          + log_format = "Text"
          + log_group  = (known after apply)
        }
    }

  # aws_sns_topic.alert will be created
  + resource "aws_sns_topic" "alert" {
      + arn                         = (known after apply)
      + beginning_archive_time      = (known after apply)
      + content_based_deduplication = false
      + fifo_topic                  = false
      + id                          = (known after apply)
      + name                        = "lambda_alerts"
      + name_prefix                 = (known after apply)
      + owner                       = (known after apply)
      + policy                      = (known after apply)
      + signature_version           = (known after apply)
      + tags_all                    = (known after apply)
      + tracing_config              = (known after apply)
    }

  # aws_sns_topic_subscription.alert_email will be created
  + resource "aws_sns_topic_subscription" "alert_email" {
      + arn                             = (known after apply)
      + confirmation_timeout_in_minutes = 1
      + confirmation_was_authenticated  = (known after apply)
      + endpoint                        = "michael.vanhee@icloud.com"
      + endpoint_auto_confirms          = false
      + filter_policy_scope             = (known after apply)
      + id                              = (known after apply)
      + owner_id                        = (known after apply)
      + pending_confirmation            = (known after apply)
      + protocol                        = "email"
      + raw_message_delivery            = false
      + topic_arn                       = (known after apply)
    }

Plan: 26 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + dynamodb             = {
      + table_arn  = (known after apply)
      + table_name = "users"
    }
  ~ error_alarm          = {
      ~ alarm_arn  = "arn:aws:cloudwatch:us-east-1:000000000000:alarm:LambdaErrorAlarm" -> (known after apply)
        # (1 unchanged attribute hidden)
    }
  + lambda               = {
      + dynamodb_table_arn    = (known after apply)
      + dynamodb_table_name   = "users"
      + invoke_lambda_command = "awslocal lambda invoke --function-name lambda_function_name output.json && cat output.json"
      + lambda_function_arn   = (known after apply)
      + lambda_function_name  = "lambda_function_name"
    }
  - lambda_function_name = {
      - dynamodb_table_arn    = "arn:aws:dynamodb:us-east-1:000000000000:table/users"
      - dynamodb_table_name   = "users"
      - invoke_lambda_command = "awslocal lambda invoke --function-name lambda_function_name output.json && cat output.json"
      - lambda_function_arn   = "arn:aws:lambda:us-east-1:000000000000:function:lambda_function_name"
      - lambda_function_name  = "lambda_function_name"
    } -> null
  ~ logging              = {
      ~ iam_policy_arn             = "arn:aws:iam::000000000000:policy/lambda_logging" -> (known after apply)
      ~ iam_role_arn               = "arn:aws:iam::000000000000:role/iam_for_lambda" -> (known after apply)
      ~ iam_role_policy_attachment = "arn:aws:iam::000000000000:policy/lambda_logging" -> (known after apply)
      ~ log_group_arn              = "arn:aws:logs:us-east-1:000000000000:log-group:/aws/lambda/lambda_function_name" -> (known after apply)
        # (4 unchanged attributes hidden)
    }
  + sns                  = {
      + subscription_arn = (known after apply)
      + topic_arn        = (known after apply)
      + topic_name       = "lambda_alerts"
    }
  - sns_subscription     = {
      - subscription_arn = "arn:aws:sns:us-east-1:000000000000:lambda_alerts:ede19c97-fb1b-4e7d-ac4a-e675963f2b5c"
    } -> null
  - sns_topic            = {
      - topic_arn  = "arn:aws:sns:us-east-1:000000000000:lambda_alerts"
      - topic_name = "lambda_alerts"
    } -> null
  - table_name           = "users" -> null
╷
│ Warning: AWS account ID not found for provider
│
│   with provider["registry.opentofu.org/hashicorp/aws"],
│   on providers.tf line 1, in provider "aws":
│    1: provider "aws" {
│
│ See https://registry.terraform.io/providers/hashicorp/aws/latest/docs#skip_requesting_account_id for implications.
╵

Do you want to perform these actions?
  OpenTofu will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_iam_role.iam_for_lambda: Creating...
aws_cloudwatch_log_group.cloudwatch_log_group: Creating...
aws_iam_policy.lambda_logging: Creating...
aws_sns_topic.alert: Creating...
aws_dynamodb_table.users: Creating...
aws_iam_policy.lambda_logging: Creation complete after 0s [id=arn:aws:iam::000000000000:policy/lambda_logging]
aws_iam_role.iam_for_lambda: Creation complete after 0s [id=iam_for_lambda]
aws_iam_role_policy_attachment.lambda_logs: Creating...
aws_iam_role_policy_attachment.lambda_logs: Creation complete after 0s [id=iam_for_lambda-20240815164240042500000001]
aws_sns_topic.alert: Creation complete after 0s [id=arn:aws:sns:us-east-1:000000000000:lambda_alerts]
aws_sns_topic_subscription.alert_email: Creating...
aws_sns_topic_subscription.alert_email: Creation complete after 0s [id=arn:aws:sns:us-east-1:000000000000:lambda_alerts:96133a58-ce99-4ae7-8084-c3163f5e4440]
aws_cloudwatch_log_group.cloudwatch_log_group: Creation complete after 0s [id=/aws/lambda/lambda_function_name]
aws_dynamodb_table.users: Creation complete after 0s [id=users]
aws_iam_policy.dynamodb_policy: Creating...
aws_dynamodb_table_item.users["110"]: Creating...
aws_dynamodb_table_item.users["115"]: Creating...
aws_dynamodb_table_item.users["114"]: Creating...
aws_dynamodb_table_item.users["101"]: Creating...
aws_dynamodb_table_item.users["102"]: Creating...
aws_dynamodb_table_item.users["107"]: Creating...
aws_dynamodb_table_item.users["109"]: Creating...
aws_dynamodb_table_item.users["106"]: Creating...
aws_lambda_function.test_lambda: Creating...
aws_iam_policy.dynamodb_policy: Creation complete after 0s [id=arn:aws:iam::000000000000:policy/DynamoDBLambdaPolicy]
aws_dynamodb_table_item.users["104"]: Creating...
aws_dynamodb_table_item.users["115"]: Creation complete after 0s [id=users|Id|115]
aws_dynamodb_table_item.users["101"]: Creation complete after 0s [id=users|Id|101]
aws_dynamodb_table_item.users["109"]: Creation complete after 0s [id=users|Id|109]
aws_dynamodb_table_item.users["110"]: Creation complete after 0s [id=users|Id|110]
aws_dynamodb_table_item.users["114"]: Creation complete after 0s [id=users|Id|114]
aws_dynamodb_table_item.users["111"]: Creating...
aws_dynamodb_table_item.users["108"]: Creating...
aws_dynamodb_table_item.users["107"]: Creation complete after 0s [id=users|Id|107]
aws_dynamodb_table_item.users["106"]: Creation complete after 0s [id=users|Id|106]
aws_dynamodb_table_item.users["112"]: Creating...
aws_dynamodb_table_item.users["105"]: Creating...
aws_dynamodb_table_item.users["113"]: Creating...
aws_iam_role_policy_attachment.lambda_attach: Creating...
aws_dynamodb_table_item.users["103"]: Creating...
aws_dynamodb_table_item.users["102"]: Creation complete after 0s [id=users|Id|102]
aws_dynamodb_table_item.users["104"]: Creation complete after 0s [id=users|Id|104]
aws_iam_role_policy_attachment.lambda_attach: Creation complete after 0s [id=iam_for_lambda-20240815164240467200000002]
aws_dynamodb_table_item.users["111"]: Creation complete after 0s [id=users|Id|111]
aws_dynamodb_table_item.users["108"]: Creation complete after 0s [id=users|Id|108]
aws_dynamodb_table_item.users["112"]: Creation complete after 0s [id=users|Id|112]
aws_dynamodb_table_item.users["113"]: Creation complete after 0s [id=users|Id|113]
aws_dynamodb_table_item.users["103"]: Creation complete after 1s [id=users|Id|103]
aws_dynamodb_table_item.users["105"]: Creation complete after 1s [id=users|Id|105]
aws_lambda_function.test_lambda: Creation complete after 6s [id=lambda_function_name]
aws_cloudwatch_metric_alarm.lambda_error_alarm: Creating...
aws_cloudwatch_metric_alarm.lambda_error_alarm: Creation complete after 0s [id=LambdaErrorAlarm]
╷
│ Warning: AWS account ID not found for provider
│
│   with provider["registry.opentofu.org/hashicorp/aws"],
│   on providers.tf line 1, in provider "aws":
│    1: provider "aws" {
│
│ See https://registry.terraform.io/providers/hashicorp/aws/latest/docs#skip_requesting_account_id for implications.
╵

Apply complete! Resources: 26 added, 0 changed, 0 destroyed.

Outputs:

dynamodb = {
  "table_arn" = "arn:aws:dynamodb:us-east-1:000000000000:table/users"
  "table_name" = "users"
}
error_alarm = {
  "alarm_arn" = "arn:aws:cloudwatch:us-east-1:000000000000:alarm:LambdaErrorAlarm"
  "alarm_name" = "LambdaErrorAlarm"
}
lambda = {
  "dynamodb_table_arn" = "arn:aws:dynamodb:us-east-1:000000000000:table/users"
  "dynamodb_table_name" = "users"
  "invoke_lambda_command" = "awslocal lambda invoke --function-name lambda_function_name output.json && cat output.json"
  "lambda_function_arn" = "arn:aws:lambda:us-east-1:000000000000:function:lambda_function_name"
  "lambda_function_name" = "lambda_function_name"
}
logging = {
  "iam_policy_arn" = "arn:aws:iam::000000000000:policy/lambda_logging"
  "iam_policy_document" = <<-EOT
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": [
          "logs:PutLogEvents",
          "logs:CreateLogStream",
          "logs:CreateLogGroup"
        ],
        "Resource": "arn:aws:logs:*:*:*"
      }
    ]
  }
  EOT
  "iam_policy_name" = "lambda_logging"
  "iam_role_arn" = "arn:aws:iam::000000000000:role/iam_for_lambda"
  "iam_role_name" = "iam_for_lambda"
  "iam_role_policy_attachment" = "arn:aws:iam::000000000000:policy/lambda_logging"
  "log_group_arn" = "arn:aws:logs:us-east-1:000000000000:log-group:/aws/lambda/lambda_function_name"
  "log_group_name" = "/aws/lambda/lambda_function_name"
}
sns = {
  "subscription_arn" = "arn:aws:sns:us-east-1:000000000000:lambda_alerts:96133a58-ce99-4ae7-8084-c3163f5e4440"
  "topic_arn" = "arn:aws:sns:us-east-1:000000000000:lambda_alerts"
  "topic_name" = "lambda_alerts"
}
```
