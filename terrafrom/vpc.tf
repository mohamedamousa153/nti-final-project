resource "aws_vpc" "main" {
  cidr_block = var.cidr_aws_vpc

  tags = {
    Name = "main"
  }
}