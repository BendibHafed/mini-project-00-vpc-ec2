resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name      = "project-00-vpc"
    ManagedBy = "Terraform"
    Project   = "mini-project-00-vpc-ec2"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name      = "project-00-public"
    ManagedBy = "Terraform"
    Project   = "mini-project-00-vpc-ec2"
  }
}

