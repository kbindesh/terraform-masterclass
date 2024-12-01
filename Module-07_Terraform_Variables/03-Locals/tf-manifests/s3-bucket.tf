# Create S3 Bucket - with Input Variables & Local Values
resource "aws_s3_bucket" "mys3bucket" {
  bucket = local.bucket-name
  tags = {
    Name = local.bucket-name
    Environment = var.environment_name
  }
}

resource "aws_s3_bucket_ownership_controls" "bucket_ownr_ctrl" {
  bucket = aws_s3_bucket.mys3bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.bucket_ownr_ctrl]

  bucket = aws_s3_bucket.mys3bucket.id
  acl    = "private"
}