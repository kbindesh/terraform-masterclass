# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-0915bcb5fa77e4892" # Replace this ami id with your AMI ID | Amazon Linux/CentOS/RHEL
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  #availability_zone = "us-east-1b"
  tags = {
    "Name" = "BIN-WEB-SERVER"
  }
  /*
  lifecycle {
    create_before_destroy = true
  }
*/
}
