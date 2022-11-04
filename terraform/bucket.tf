# ruleid: module-tags-existence
module "bucket_staging_sparta" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "bucket-staging-sparta"
  acl    = "private"

  versioning = {
    enabled = true
  }

  tags = local.enabled_tags
}
