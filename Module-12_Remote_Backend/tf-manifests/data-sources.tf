data "aws_vpc" "data_vpc_id" {
  tags = {
    "Name" = "Default VPC - DO NOT DELETE"
  }
}

data "aws_ami" "amzn_lnx2_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20240529.0-x86_64-gp2"]
  }
}
