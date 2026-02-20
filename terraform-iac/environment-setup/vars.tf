variable "region" {
  description = "The region to create the resources in"
  type        = string
}

variable "profile" {
  description = "AWS CLI profile to use for authentication"
  type        = string
  default     = "yustyna"
}

variable "availability-zone" {
  description = "Availability zone for subnets"
  type        = string
}

variable "public-subnet" {
  description = "CIDR block for lb-subnet"
  type        = string
}

variable "ami-name" {
  description = "The AMI name to use for instances"
  type        = string
}

variable "public-key" {
  description = "SSH Key Pair name"
  type        = string
  default     = "eschool-key"
}
