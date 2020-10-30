variable "function_name" {
  type = string
}

data "aws_lambda_function" "danialjim function" {
  function_name = var.function_name
}