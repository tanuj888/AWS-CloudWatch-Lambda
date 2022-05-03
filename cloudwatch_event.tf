# Cloudwatch event Rule

resource "aws_cloudwatch_event_rule" "test-lambda" {
  name                = "run-lambda-function"
  description         = "Fires every 24 hours"
  schedule_expression = "rate(24 hours)"
}

# LAMBDA CLOUDWATCH EVENT TARGET

resource "aws_cloudwatch_event_target" "lambda-function-target" {
  rule      = "${aws_cloudwatch_event_rule.test-lambda.name}"
  target_id = "lambda-function-target"
  arn       = "${aws_lambda_function.test_lambda.arn}"
}


# AWS LAMBDA PERMISSIONS

resource "aws_lambda_permission" "allow_cloudwatch" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.test_lambda.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.test-lambda.arn}"
}


