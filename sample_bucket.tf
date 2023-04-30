resource "google_storage_bucket" "sample_bucket" {
 name          = "test-cicd-regional"
 project       = "cicd-project-381723"
 location      = "US"
 force_destroy = true
}