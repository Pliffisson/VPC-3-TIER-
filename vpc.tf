# Step 1: Create a VPC
resource "aws_vpc" "myvpc" { 
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "MyTerraformVPC"
  }
}

# Step 2: Create a public subnet
resource "aws_subnet" "PublicSubnetWeb1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "MyPublicWeb01"
  }
}

resource "aws_subnet" "PublicSubnetWeb2" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "MyPublicWeb02"
  }
}

# Step 3: Create a private subnet
resource "aws_subnet" "PrivateSubnetApp1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.10.0/24"

  tags = {
    Name = "MyPrivateApp1"
  }
}

# Step 4: Create IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "myIGW"
  }
}

# Step 5: Route tables for public subnet
resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "myPublicRT"
  }
}

# Step 6: Route tables association public subnet
resource "aws_route_table_association" "PublicRTassociation" {
  subnet_id      = [aws_subnet.PublicSubnetWeb1.id, aws_subnet.PublicSubnetWeb2.id]
  route_table_id = aws_route_table.PublicRT.id
}