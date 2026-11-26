resource "aws_instance" "new_ec2" {
  ami           = "ami-0aacbf72109c53c0c"
  instance_type = "t3.micro"
   subnet_id = module.network.sub_public1
   root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  tags = {
    Name = "new_ec2"
  }

   
}