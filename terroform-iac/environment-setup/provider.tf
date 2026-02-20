provider "aws" {
  region  = var.region
  profile = var.profile

  default_tags {
    tags = {
      "CreatedBy" = "Terraform"
      "Project"   = "ESchool"
      "Module"    = "environment-setup"
    }
  }
}
