terraform {
  backend "s3" {
    bucket       = "terraform-state-eschool"
    region       = "us-east-1"
    key          = "setup/backend.tfstate"
    encrypt      = true
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
