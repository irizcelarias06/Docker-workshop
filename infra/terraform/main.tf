terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

resource "google_bigquery_dataset" "ny_taxi_dataset" {
  dataset_id = var.bq_dataset_name
  location   = var.location

  description = "NYC taxi practice dataset managed by Terraform"

  # Non-partitioned tables expire after 3 days.
  default_table_expiration_ms = 259200000

  # Partitions in newly created partitioned tables expire after 3 days.
  default_partition_expiration_ms = 259200000

  delete_contents_on_destroy = true
}