provider "google" {
    credentials = file("../../config/edc-m4-cf7652751e84.json")

    project = var.project_id
    region = var.region
    zone = var.location
  
}