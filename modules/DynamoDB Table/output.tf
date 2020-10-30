output "this_dynamodb_table_arn" {
  description = "ARN DynamoDB table"
  value       = module.dynamodb_table.this_dynamodb_table_arn
}

output "this_dynamodb_table_id" {
  description = "ID of the DynamoDB table"
  value       = module.dynamodb_table.this_dynamodb_table_id
}

output "this_dynamodb_table_stream_arn" {
  description = "The ARN of the Table"
  value       = module.dynamodb_table.this_dynamodb_table_stream_arn
}

output "this_dynamodb_table_stream_label" {
  description = "label table stream"
  value       = module.dynamodb_table.this_dynamodb_table_stream_label
}