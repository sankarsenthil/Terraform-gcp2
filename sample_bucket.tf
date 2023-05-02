resource "google_storage_bucket" "sample_bucket" {
 name          = "test-cicd-regional"
 project       = "cicd-project-381723"
 location      = "US"
 uniform_bucket_level_access = true
 force_destroy = true
}