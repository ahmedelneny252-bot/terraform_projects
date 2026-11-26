resource "aws_nat_gateway" "natgw_hue" {
  allocation_id = aws_eip.elastic_hue.id
  subnet_id     = aws_subnet.public1_sub_hue.id

  tags = {
    Name = "natgw_hue"
  }

 
  depends_on = [aws_internet_gateway.gw_hue]
}