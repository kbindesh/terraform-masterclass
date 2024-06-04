# Create 4 IAM Users
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

resource "aws_iam_user" "myuser" {
  for_each = toset(["Rajesh", "Somesh", "Ravi", "Pankaj"])
  name     = each.key
}
