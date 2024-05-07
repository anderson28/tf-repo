terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.52.0"
    }
  }
}

provider "google" {
    project = var.GOOGLE_PROJECT
    region = var.GOOGLE_REGION
}

terraform {
  backend "gcs" {
    bucket = "devops_tfstatebucket"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "github.com/anderson28/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}