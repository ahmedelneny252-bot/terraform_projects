resource "aws_eip" "elastic_hue" {
  domain = "vpc"

  tags = {
    Name = "elastic_hue"
  }
}