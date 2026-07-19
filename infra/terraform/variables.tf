variable "project" {
  description = "Google Cloud project ID"
  type        = string
  default     = "taxi-rides-ny-502502"
}

variable "region" {
  description = "Default Google Cloud region"
  type        = string
  default     = "us-central1"
}

variable "location" {
  description = "BigQuery dataset location"
  type        = string
  default     = "US"
}

variable "bq_dataset_name" {
  description = "BigQuery dataset name"
  type        = string
  default     = "ny_taxi_tf"
}