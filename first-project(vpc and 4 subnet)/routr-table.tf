#...............public
resource "aws_route_table" "routtable_public_hue" {
  vpc_id = aws_vpc.hue_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_hue.id
  }
   tags = {
    Name = "routtable_public_hue"
  }
  }

  resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public1_sub_hue.id
  route_table_id = aws_route_table.routtable_public_hue.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public2_sub_hue.id
  route_table_id = aws_route_table.routtable_public_hue.id
}
#............. private
resource "aws_route_table" "routtable_private_hue" {
  vpc_id = aws_vpc.hue_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw_hue.id
  }

  tags = {
    Name = "routtable_private_hue"
  }
}
 resource "aws_route_table_association" "private_1" {
  subnet_id      = aws_subnet.private1_sub_hue.id
  route_table_id = aws_route_table.routtable_private_hue.id
}
 resource "aws_route_table_association" "private_2" {
  subnet_id      = aws_subnet.private2_sub_hue.id
  route_table_id = aws_route_table.routtable_private_hue.id
}