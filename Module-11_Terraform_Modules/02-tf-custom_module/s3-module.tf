module "s3_static_web" {
  source      = "./modules/s3-web-hosting"
  bucket_name = var.bucket_name
  res_region  = var.res_region
  env_type    = var.env_type
}
