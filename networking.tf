resource "aws_vpc" "ecommerce_vpc" {
  cidr_block = var.vpc_cidr_block
  tags       = merge(var.tags, { Name : "vpc network for ecommerce app", "resource_type" : "vpc" })
}
