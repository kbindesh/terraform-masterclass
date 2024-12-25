output "bucket_id" {
  value = data.aws_s3_bucket.existing_bucket.id
}

output "bucket_arn" {
  value = data.aws_s3_bucket.existing_bucket.arn
}

output "bucket_region" {
  value = data.aws_s3_bucket.existing_bucket.region
}

output "bucket_domain_name" {
  value = data.aws_s3_bucket.existing_bucket.bucket_domain_name
}

output "vpc_id" {
  value = data.aws_vpc.default_vpc.id
}

output "subnet_id_list" {
  value = data.aws_subnets.my_subnets.id
}

output "amzn_lnx_ami_id" {
  value = data.aws_ami.amzn_lnx2_ami.image_id
}
