locals {
  dynamodb_items = jsondecode(file("${path.module}/dynamodb_data.json"))
}
