# Internet gateway

resource "aws_internet_gateway" "gtw1" {
  vpc_id = aws_vpc.splunk-vpc.id
}