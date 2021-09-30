variable "region_id" {
  default = "us-east-2"
}

variable "prefix" {
  default = "dl"
}

variable "account" {
  default = 545484834876
}

variable "cluster_name"{
  type = string
  default = "eks-igti-cleyber"
}

variable "kubernetes_version" {
  type    = string
  default = "1.21"
}

variable "bucket_names" {
  description = "Create S3 buckets with these names"
  type        = string
  default = "datalake-igti"
}