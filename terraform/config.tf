terraform {
  required_version = ">= 0.13"

  required_providers {
    google = ">= 3.56"
  }
}

provider "google"{
  project = "lhzpaese"
}