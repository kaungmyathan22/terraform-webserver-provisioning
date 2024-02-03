variable "region" {
  type        = string
  description = "region for aws for these resource to apply"
}

variable "instance_type" {
  type        = string
  description = "instance type for web server."
}

variable "tags" {
  type        = map(string)
  description = "tags for project"
  default = {
    "project_name" = "Ecommerce Project"
    "environment"  = "Development"
  }
}

variable "vpc_cidr_block" {
  type        = string
  description = "cidr block for your vpc"
}

variable "aws_s3_backend_bucketname" {
  type        = string
  description = "backend for your s3 backend to store tf state"
}

variable "aws_backend_dynamodb_table_name" {
  type        = string
  description = "backend for your dynamodb table to store tf state"
}

variable "aws_s3_backend_key_name" {
  type        = string
  description = "s3 key path to store tf state"
}
