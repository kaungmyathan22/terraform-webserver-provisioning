terraform {
  backend "s3" {
    bucket         = var.aws_s3_backend_bucketname
    key            = var.aws_s3_backend_key_name
    region         = var.region
    dynamodb_table = var.aws_backend_dynamodb_table_name
    encrypt        = true
  }
}
