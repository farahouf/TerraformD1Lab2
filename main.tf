provider "aws" {
  region = "us-east-1"
}
data "aws_vpc" "default" {
  default = true
}

resource "aws_subnet" "G4_Default_Subnet" {

  vpc_id     = data.aws_vpc.default.id
  cidr_block = "172.31.166.0/24"
  tags = {
      name = "Group4-Subnet-Default"
    }
}
