resource "aws_security_group" "yashika_SG" {
  
  name        = var.sg_names
  vpc_id      = "vpc-0db9b000905eaca0e"
  description = var.sg_description

  ingress {
    description      = var.sg_description
    from_port        = 22
    to_port          = var.sg_to_port
    protocol         = var.sg_protocol
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.sg_names
  }

}