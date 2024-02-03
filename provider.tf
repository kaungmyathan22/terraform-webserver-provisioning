terraform {
  backend "s3" {
    bucket         = "km-terraform-ecommerce-backend"
    key            = "ecommerce-backend/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "km-ecommerce-terraform-state-locking"
    encrypt        = true
  }
}
