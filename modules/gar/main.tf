# Create Artifact Registry Repository for Docker containers
resource "google_artifact_registry_repository" "my_docker_repo" {
  project       = var.project
  location      = var.region
  repository_id = var.repository_id
  description   = var.description
  format        = var.format
}

# Create a service account
resource "google_service_account" "docker_push" {
  account_id   = var.account_id
  display_name = var.display_name
}

# Give service account permission to push to the Artifact Registry Repository
resource "google_artifact_registry_repository_iam_member" "docker_push_iam" {
  location   = google_artifact_registry_repository.my_docker_repo.location
  repository = google_artifact_registry_repository.my_docker_repo.repository_id
  role       = var.role_gar
  member     = "serviceAccount:${google_service_account.docker_push.email}"
  depends_on = [
    google_artifact_registry_repository.my_docker_repo,
    google_service_account.docker_push
  ]
}
