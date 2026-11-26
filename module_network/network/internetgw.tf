resource "aws_internet_gateway" "gw_hue" {
  vpc_id = aws_vpc.new_vpc.id

  tags = {
    Name = "gw_hue"
  }
}