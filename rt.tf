# Public route table
resource "aws_route_table" "rtpu" {
  vpc_id = aws_vpc.splunk-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gtw1.id
  }
}
# private route table
resource "aws_route_table" "rtpri" {
  vpc_id = aws_vpc.splunk-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat1.id
  }
}