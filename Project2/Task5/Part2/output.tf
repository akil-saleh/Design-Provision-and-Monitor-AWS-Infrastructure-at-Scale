output "aws_iam_role_policy-output" {
  value = aws_iam_role_policy.lambda_policy.name
}

output "aws_iam_role-output" {
  value = aws_iam_role.lambda_role.name
}


output "aws_lambda_function-output" {
  value = aws_lambda_function.lambda.arn
}

