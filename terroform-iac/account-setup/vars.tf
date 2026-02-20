variable "region" {
  description = "The region to create the resources in"
  type        = string
}

variable "profile" {
  description = "AWS CLI profile to use for authentication"
  type        = string
  default     = "yustyna"
}
