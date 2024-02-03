resource "aws_vpc" "ecommerce_vpc" {
  cidr_block = var.vpc_cidr_block
  tags       = merge(var.tags, { Name : "vpc network for ecommerce app", "resource_type" : "vpc" })
}

resource "aws_subnet" "ecommerce_subnet" {
  vpc_id     = aws_vpc.ecommerce_vpc.id
  cidr_block = var.subnet_cidr_block
  tags       = merge(var.tags, { "Resource" : "subnet", "Name" : "subnets for ecommerce app" })
}
