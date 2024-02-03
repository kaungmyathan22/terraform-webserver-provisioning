variable "region" {
  type        = string
  description = "region for aws for these resource to apply"
}

variable "aws_s3_backend_bucketname" {
  type        = string
  description = "backend for your s3 backend to store tf state"
}


variable "aws_backend_dynamodb_table_name" {
  type        = string
  description = "backend for your dynamodb table name to store tf state."
}

variable "tags" {
  type        = map(string)
  description = "tags for project"
  default = {
    "project_name" = "Ecommerce Project"
    "environment"  = "Development"
  }
}
