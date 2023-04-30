terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("keys.json")

  project = "cicd-project-381723"
  region  = var.region
  zone    = var.zone
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_storage_bucket" "static-site" {
  name          = "ci-cd-bucket-regional"
  location      = "US"
  force_destroy = true


  uniform_bucket_level_access = true

  
  cors {
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    }
}