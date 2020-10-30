module "dynamodb_table" {
  source   = "terraform-aws-modules/dynamodb-table/aws"

  name     = "datos-personales"
  hash_key = "id"

   attributes = [
    {
      name = "id_persona"
      type = "N"
    },
    {
      name = "nombre"
      type = "S"
    },
    {
      name = "edad"
      type = "N"
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}