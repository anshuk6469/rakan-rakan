# resource "aws_vpc" "my_vpc" {
#   cidr_block = "172.16.0.0/16"

#   tags = {
#     Name = "Deep-VPC"
#   }
# }

# resource "aws_subnet" "my_subnet" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "172.16.10.0/24"
#   availability_zone = "us-east-1a"

#   tags = {
#     Name = "Deep-Subnet"
#   }
# }

# resource "aws_network_interface" "foo" {
#   subnet_id   = aws_subnet.my_subnet.id
#   private_ips = ["172.16.10.100"]

#   tags = {
#     Name = "Deep-primary-interface"
#   }
# }

# resource "aws_instance" "foo" {
#   ami           = "ami-0c15e602d3d6c6c4a" # us-west-2
#   instance_type = "t2.micro"
#   count = 3
#   network_interface {
#     network_interface_id = aws_network_interface.foo.id
#     device_index         = 0
#   }
#   tags = {
#     Name = "Deep-Instance${count.index}"
#   }
# }



# resource "aws_eip" "lb" {
#   domain   = "vpc"
#   count = 3
#   tags = {
#     Name = "DeepEip${count.index}"
#   }
# }