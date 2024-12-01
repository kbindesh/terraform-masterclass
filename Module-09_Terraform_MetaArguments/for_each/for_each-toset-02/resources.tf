resource "aws_instance" "sandbox_instances" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = toset(var.sandbox_list)
  tags = {
    Name = each.value # for a set, each.value and each.key is the same
  }
}
