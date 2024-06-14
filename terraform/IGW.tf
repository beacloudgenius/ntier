/* Internet gateway for the public subnet */
resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
}
