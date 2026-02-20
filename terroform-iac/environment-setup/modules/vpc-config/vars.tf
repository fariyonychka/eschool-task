variable "region" {
  description = "The region to create the resources in"
  type        = string
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
}

variable "availability-zone" {
  description = "Availability zone for subnets"
  type        = string
  default     = "us-east-1a"
}

variable "vpc-id" {
  description = "The VPC ID where subnet will be created"
  type        = string
}

variable "public-subnet" {
  description = "CIDR block for lb-subnet"
  type        = string
}
