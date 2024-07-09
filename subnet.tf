#public subnet 1
resource "aws_subnet" "public1" {
  availability_zone       = "us-east-1a"
  cidr_block              = "10.10.1.0/24"
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.splunk-vpc.id
  tags = {
    Name = "splunk-public-subnet-1a"
  }
}
# public sub 2
resource "aws_subnet" "public2" {
  availability_zone       = "us-east-1b"
  cidr_block              = "10.10.2.0/24"
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.splunk-vpc.id
  tags = {
    Name = "splunk-public-subnet-1b"
  }
}



# Private subnet 1

resource "aws_subnet" "private1" {
  availability_zone = "us-east-1a"
  cidr_block        = "10.10.3.0/24"
  vpc_id            = aws_vpc.splunk-vpc.id
  tags = {
    Name = "splunk-private-subnet-1a"
  }

}

# Private subnet 2

resource "aws_subnet" "private2" {
  availability_zone = "us-east-1b"
  cidr_block        = "10.10.4.0/24"
  vpc_id            = aws_vpc.splunk-vpc.id
  tags = {
    Name = "splunk-private-subnet-1b"
  }
}
