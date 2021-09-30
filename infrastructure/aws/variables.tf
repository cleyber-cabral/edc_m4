variable "region_id" {
  default = "us-east-2"
}

variable "prefix" {
  default = "dl"
}

variable "account" {
  default = 545484834876
}

variable "lambda_function_name"{
  default = "IGTIexecutaEMR"
}

variable "bucket_names" {
  description = "Create S3 buckets with these names"
  type        = string
  default = "datalake-igti"
}