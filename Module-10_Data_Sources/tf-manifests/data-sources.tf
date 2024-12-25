# Data source to fetch S3 bucket arguments
data "aws_s3_bucket" "existing_bucket" {
  bucket = "binterraformstatebucket23"
}

# Data source to query an Amazon VPC 
data "aws_vpc" "default_vpc" {
  filter {
    name   = "tag:Name"
    values = ["PROD-APP-VPC"]
  }
}

# Data source to query subnets associated with a particular VPC
data "aws_subnets" "my_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default_vpc.id]
  }
}

# Data source to query AMI ID of Amazon Linux 2 image in US East region
data "aws_ami" "amzn_lnx2_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20240529.0-x86_64-gp2"]
  }
}
