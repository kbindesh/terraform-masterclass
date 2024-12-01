resource "aws_s3_bucket" "web_hosting_bkt" {
  bucket = var.bucket_name
  tags = {
    "Env" = var.env_type
  }
}

resource "aws_s3_bucket_website_configuration" "website_config" {
  depends_on = [aws_s3_bucket.web_hosting_bkt]
  bucket     = aws_s3_bucket.web_hosting_bkt.id
  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_ownership_controls" "bkt_ownership" {
  depends_on = [aws_s3_bucket.web_hosting_bkt]
  bucket     = aws_s3_bucket.web_hosting_bkt.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "bkt_public_block" {
  depends_on = [aws_s3_bucket.web_hosting_bkt]
  bucket     = aws_s3_bucket.web_hosting_bkt.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "bkt_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.bkt_ownership]
  bucket     = aws_s3_bucket.web_hosting_bkt.id
  acl        = "public-read"
}

resource "aws_s3_bucket_policy" "allow_pub_access" {
  bucket = aws_s3_bucket.web_hosting_bkt.id
  policy = <<EOF
  {
    "Id": "Policy1733043373463",
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "Stmt1733043372360",
        "Action": [
          "s3:GetObject"
        ],
        "Effect": "Allow",
        "Resource": "arn:aws:s3:::${var.bucket_name}/*",
        "Principal": "*"
      }
    ]
  }
  EOF
}
