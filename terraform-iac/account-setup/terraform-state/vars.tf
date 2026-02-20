variable "profile" {
  description = "AWS CLI profile to use for authentication"
  type        = string
  default     = "yustyna"
}

variable "bucket-name" {
  description = "Name of the S3 bucket to store Terraform state"
  type        = string
  default     = "terraform-state-eschool"
}
