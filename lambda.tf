# zip python script.
data "archive_file" "loggroup" {
  type        = "zip"
  source_file = "loggroup.py"
  output_path = "outputs/loggroup.zip"
}

# Defining lambda function
resource "aws_lambda_function" "test_lambda" {
  filename      = "outputs/loggroup.zip"
  function_name = "retention_period"
  role          = "${aws_iam_role.lambda_role.arn}"
  handler       = "loggroup.lambda_handler"
  runtime       = "python3.9"
  description   =  "changes the retention period of Cloudwatch logGroups"
  
  source_code_hash = "${filebase64sha256("outputs/loggroup.zip")}"

}



  