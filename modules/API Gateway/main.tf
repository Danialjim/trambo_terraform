resource "aws_api_gateway_rest_api" "Api GW" {
  name        = "My Api Gateway"
  description = "This is my API"
}

resource "aws_api_gateway_rest_api" "example" {
  name = "regional api gateway"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}