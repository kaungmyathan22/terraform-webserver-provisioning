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
