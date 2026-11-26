output "vpc_id" {
  value       = aws_vpc.new_vpc.id
  
}
output "sub_public1" {
  value       = aws_subnet.public1_sub_hue.id
 
}

