resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet_cider
    availability_zone = var.public_avability_Zone
    map_public_ip_on_launch = true
    tags = {
      Name="A: Public Subnet"
    }
  
}
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_cider

    availability_zone = var.private_avability_Zone
    tags = {
      Name="A: Private Subnet"
    }
  
}