# ----------------------------------------------------------------------
# Default AWS Region used to deploy resources
# ----------------------------------------------------------------------
variable "aws_region" {
  default = "us-east-1"
}

# ----------------------------------------------------------------------
# Application name used for naming resources
# ----------------------------------------------------------------------
variable "app_name" {
  default = "sam-app-hello-world"
}

# ----------------------------------------------------------------------
# Lambda functions, used to retrieve function ARN CFN exports
# ----------------------------------------------------------------------
variable "api_lambda_functions" {
  default = [
    "hello-world"
  ]
}

# ----------------------------------------------------------------------
# Lambda invoke URI prefix used in openAPI specification
# ----------------------------------------------------------------------
variable "lambda_invoke_uri_prefix" {
  default = "arn:aws:apigateway:us-east-1:lambda:path/2015-03-31/functions"
}

# ----------------------------------------------------------------------
# S3 bucket for converted SAM templates
# ----------------------------------------------------------------------
variable "sam_code_bucket" {
  default = "protokol-robi2-sam-code-bucket"
}
