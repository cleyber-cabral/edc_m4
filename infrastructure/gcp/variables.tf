variable "gke_username" {
  default     = "Cleyber"
  description = "gke username"
}

variable "gke_password" {
  default     = "9E@b%PAnFy65DAkK"
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "project_id"{
    default = "edc-m4"
    description = "Curso EDC Módulo 4 - IGTI"
}

variable "region" {
    default = "us-east1"  
}

variable "location"{
    default = "us-east1-b"
}