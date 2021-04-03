provider "google" {}

terraform {
  required_version = ">= 0.14.09"
  backend "gcs" {
    bucket = "stacklabs-gsdenys-tfstatus"
    prefix = "terraform/infra/state"
  }
}
