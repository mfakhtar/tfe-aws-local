data "aws_vpc" "default" {
  default = true
} 

resource "aws_subnet" "tfe-fawaz-subnet" {
  vpc_id            = data.aws_vpc.default.id
  cidr_block        = "172.31.240.0/20"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "tfe-fawaz-subnet"
  }
}