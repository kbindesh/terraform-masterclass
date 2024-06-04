resource "aws_instance" "sandbox_instances" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.sandboxes) 
  tags = {
    Name = var.sandboxes[count.index]
  }
}