# Resource: EC2 Instance
resource "aws_instance" "lnx_web_server" {
  ami = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "Nova-WebServer"
  }
}