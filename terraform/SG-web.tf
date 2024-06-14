/* Security group for the web */
resource "aws_security_group" "web" {
  name        = "SG-web-automated-vpc"
  description = "Security group for web that allows web traffic from internet"
  vpc_id      = aws_vpc.default.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web"
  }
}
