# Local for constructing S3 bucket name
locals {
  bucket-name = "${var.app_name}-${var.environment_name}-bucket" # Complex expression
}