provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}

# resource "aws_instance" "web-server-1" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = var.instance_type
#   tags          = merge(var.tags, { "resource_type" : "web server" })
# }
