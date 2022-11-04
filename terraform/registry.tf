# ruleid: module-tags-existence
module "registry_staging_sparta_frontend" {
  source = "terraform-aws-modules/ecr/aws"

  repository_name = "registry-staging-sparta-frontend"
  tags            = merge(local.enabled_tags, {
    Service = "frontend"
  })
}

# ruleid: module-tags-existence
module "registry_staging_sparta_backend" {
  source = "terraform-aws-modules/ecr/aws"

  repository_name = "registry-staging-sparta-backend"

  tags = merge(local.enabled_tags, {
    Service = "backend"
  })
}
