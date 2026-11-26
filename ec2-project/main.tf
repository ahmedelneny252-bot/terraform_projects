module "network" {
  source = "./network"
  vpc_name=var.new_vpc_name
  region = var.new_region
  cidr_vpc = var.new_cidr_vpc
  cidr_sub_public1 = var.new_cidr_sub_public1
  cidr_sub_public2 = var.new_cidr_sub_public2
  cidr_sub_private1 = var.new_cidr_sub_private1
  cidr_sub_private2 = var.new_cidr_sub_private2
}


