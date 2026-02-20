module "vpc-config" {
  source            = "./modules/vpc-config"
  region            = var.region
  common_tags       = local.common_tags
  availability-zone = var.availability-zone
  public-subnet     = var.public-subnet
  vpc-id            = data.aws_vpc.eschool-vpc.id
}

module "eschool" {
  source            = "./modules/eschool"
  region            = var.region
  common_tags       = local.common_tags
  vpc-id            = data.aws_vpc.eschool-vpc.id
  availability-zone = var.availability-zone
  ami-name          = var.ami-name
  public-key        = var.public-key
  subnet-id         = module.vpc-config.subnet-id
  public-subnet     = var.public-subnet
}
