variable "aws_region" {
  default = "us-east-1"
}
variable "aws_profile" {

    default = "default"
  
}
variable "vpc_cider"{
type=string
}
variable "public_subnet_cider" {
    type=string
  
}
variable "private_subnet_cider"{
type=string
}
variable "private_avability_Zone" {
  type=string
}
variable "public_avability_Zone" {
  type=string
}
variable "ami" {
  type=string
}
variable "instance_type" {
  type=string
}