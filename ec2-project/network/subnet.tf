#.............public1
resource "aws_subnet" "public1_sub_hue" {
  vpc_id     = aws_vpc.new_vpc.id
  cidr_block = var.cidr_sub_public1
  availability_zone ="${var.region}a"

  tags = {
    Name = "public1_sub_hue"
  }
}

#.............public2
resource "aws_subnet" "public2_sub_hue" {
  vpc_id     = aws_vpc.new_vpc.id
  cidr_block = var.cidr_sub_public2
  availability_zone ="${var.region}b"

  tags = {
    Name = "public2_sub_hue"
  }
}

#.............private1
resource "aws_subnet" "private1_sub_hue" {
  vpc_id     = aws_vpc.new_vpc.id
  cidr_block = var.cidr_sub_private1
  availability_zone ="${var.region}a"

  tags = {
    Name = "private1_sub_hue"
  }
}

#.............private2
resource "aws_subnet" "private2_sub_hue" {
  vpc_id     = aws_vpc.new_vpc.id
  cidr_block = var.cidr_sub_private2
  availability_zone ="${var.region}b"

  tags = {
    Name = "private2_sub_hue"
  }
}