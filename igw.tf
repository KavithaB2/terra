#creating internet gateway igw.tf
resource "aws_internet_gateway" "demogateway" {
vpc_id = aws_vpc.demovpc.id
}
