resource "aws_eip" "eip" {
 domain = "vpc"
  
}
resource "aws_nat_gateway" "nat" {
    subnet_id = aws_subnet.public_subnet.id
    allocation_id = aws_eip.eip.id
    tags = {
      Name="A: Nat Gateway"
    }
  
}