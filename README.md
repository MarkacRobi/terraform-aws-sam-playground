# Terraform + AWS SAM + REST API boilerplate

Simple REST API implemented using OpenAPI specification, AWS Lambda, AWS SAM, AWS CLI, AWS DynamoDB and Terraform.

## Prerequisites
- [Terraform](https://www.terraform.io/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- Execute ```aws configure``` command in terminal to set up the credentials. Use ```us-east-1``` as region!
- [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)
- [Docker](https://docs.docker.com/desktop/)
- set SAM_CODE_BUCKET environment variable to your unique string. For example:
  ```export SAM_CODE_BUCKET=protokol-robi2-sam-code-bucket```
- Create S3 bucket for storing AWS Cloudformation template derived from AWS SAM: 
  ```aws s3api create-bucket --bucket $SAM_CODE_BUCKET --region us-east-1```
- Package the SAM app:
  ```sam package  --output-template-file sam-deploy.yaml --s3-bucket $SAM_CODE_BUCKET```
- Update tf_variables.tf -> sam_code_bucket -> default to value of SAM_CODE_BUCKET env variable. Example:
  ```
  variable "sam_code_bucket" {
  default = "protokol-robi2-sam-code-bucket"
  }
  ```

## Other links

### OpenAPI Specification
https://swagger.io/specification/#specification

### AWS API Gateway Swagger Extensions
https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html 

