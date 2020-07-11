locals{
    lambda_zip_loc = "output/lambda.zip"
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = "lambda.py"
  output_path = local.lambda_zip_loc
}


resource "aws_lambda_function" "lambda" {
  filename      = local.lambda_zip_loc
  function_name = "lambda"
  role          = aws_iam_role.lambda_role.arn
  handler       = "lambda.lambda_handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  source_code_hash = "${filebase64sha256(local.lambda_zip_loc)}"

  runtime = "python3.8"

}