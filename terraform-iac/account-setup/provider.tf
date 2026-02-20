provider "aws" {
  region = var.region
  default_tags {
    tags = {
      "CreatedBy" = "Terraform"
      "Project"   = "ESchool"
      "Module"    = "account-setup"
    }
  }
}
