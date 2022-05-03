
##Iam Role

resource "aws_iam_role_policy" "lambda_policy" {
  name   = "lambda_policy"
  role   = "${aws_iam_role.lambda_role.id}"
  
  policy = "${file("lambda-policy.json")}"
}

##IAM- role policy
resource "aws_iam_role" "lambda_role" {
  name               = "lambda_role"
  
  assume_role_policy = "${file("lambda-assume-policy.json")}"

}

