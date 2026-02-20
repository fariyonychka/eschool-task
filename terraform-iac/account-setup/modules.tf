module "vpc" {
  source      = "./modules/vpc"
  region      = var.region
  common_tags = local.common_tags
}
