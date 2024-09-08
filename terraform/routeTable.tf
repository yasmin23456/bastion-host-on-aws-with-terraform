resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.myvpc.id
    route{
        cidr_block ="0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
      Name="A: Public Route Table"
    }
  
}
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.myvpc.id
    route{
        cidr_block ="0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat.id
    }
    tags = {
      Name="A: Private Route Table"
    }
  
}
resource "aws_route_table_association" "rt_pri_assoc" {
    subnet_id = aws_subnet.private_subnet.id
    route_table_id = aws_route_table.private_rt.id
  
}
resource "aws_route_table_association" "rt_pub_assoc" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.public_rt.id
  
}