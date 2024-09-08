resource "aws_instance" "public_ec2" {
    ami=var.ami
    instance_type = var.instance_type
    subnet_id = aws_subnet.public_subnet.id
    security_groups = [aws_security_group.SG.id]
    associate_public_ip_address = true
    key_name = aws_key_pair.TF_key.key_name
      user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "Hello this is my first Terraform project Public ec2 <br><br>created By: Aya Omar<br><br>The HostName: $(hostname)" > /var/www/html/index.html
              EOF
  tags = {
    Name = "A: Public ec2"
  }
}
resource "aws_instance" "private_ec2" {
    ami=var.ami
    instance_type = var.instance_type
    subnet_id = aws_subnet.private_subnet.id
    key_name = aws_key_pair.TF_key.key_name
    security_groups = [aws_security_group.SG.id]
      user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "Hello this is my first Terraform project From Private ec2<br><br>created By: Aya Omar<br><br>The HostName: $(hostname) " > /var/www/html/index.html
              EOF
  tags = {
    Name = "A: Private ec2"
  }
}
  
