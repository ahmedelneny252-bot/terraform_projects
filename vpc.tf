resource "aws_vpc" "hue_vpc" {
  cidr_block = var.cidr_vpc

  tags = {
    Name = "hue_vpc"
  }
}