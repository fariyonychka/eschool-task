resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc-id
  tags = merge(var.common_tags, {
    Name = "vpc-IGW"
  })
}

resource "aws_route_table" "public-route-table" {
  vpc_id = var.vpc-id
  tags = merge(var.common_tags, {
    Name = "public-route-table"
  })
}

resource "aws_route" "public-route" {
  route_table_id         = aws_route_table.public-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_subnet" "public-subnet" {
  vpc_id                  = var.vpc-id
  cidr_block              = var.public-subnet
  availability_zone       = var.availability-zone
  map_public_ip_on_launch = true
  tags = merge(var.common_tags, {
    Name = "public-subnet"
  })
}


resource "aws_route_table_association" "public-subnet-association" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}
