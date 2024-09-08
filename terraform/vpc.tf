resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cider
  enable_dns_hostnames = true
  enable_dns_support = true
  tags={
    Name="A: myvpc"
  }
}