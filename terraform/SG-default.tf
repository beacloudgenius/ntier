/* Default security group */
resource "aws_security_group" "default" {
  name        = "default-automated-vpc"
  description = "Default security group that allows inbound and outbound traffic from all instances in the VPC"
  vpc_id      = aws_vpc.default.id

  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = true
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "default"
  }
}
