provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

terraform {
  backend "gcs" {
    bucket = "py-flask-buck"
    prefix = "task/state_flask"
  }
}
