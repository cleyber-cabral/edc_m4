resource "google_storage_bucket" "edc-cleyber-m4" {
  name = "edc-cleyber-m4"
  location = "US"
  force_destroy = true
  
  uniform_bucket_level_access = true
}