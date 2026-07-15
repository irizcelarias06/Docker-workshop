terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  project = "taxi-rides-ny-502502"
  region  = "us-central1"
}



resource "google_bigquery_dataset" "ny_taxi_dataset" {
  dataset_id = "ny_taxi_tf"
  location   = "US"

  description = "NYC taxi practice dataset managed by Terraform"

  # 3 days expressed in milliseconds:
  # 3 × 24 × 60 × 60 × 1000 = 259200000
  default_table_expiration_ms = 259200000

  # Allows `terraform destroy` to remove the dataset
  # even when it already contains tables.
  delete_contents_on_destroy = true
}