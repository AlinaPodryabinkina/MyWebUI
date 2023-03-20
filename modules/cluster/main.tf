resource "google_project_iam_member" "gke" {
  project = var.project
  role    = var.role_gke
  member  = "serviceAccount:${google_service_account.kube_docker.email}"
}

resource "google_service_account" "kube_docker" {
  account_id = var.service_account_id
  project    = var.project
}

resource "google_container_cluster" "primary" {
  name     = var.name_cluster
  location = var.zone

  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count
  network                  = var.vpc_network_name
  subnetwork               = var.subnetwork_name
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.name_node_pool
  location   = var.zone
  cluster    = google_container_cluster.primary.name
  node_count = var.node_count

  management {
    auto_repair  = var.auto_repair
    auto_upgrade = var.auto_upgrade
  }

  node_config {
    preemptible  = var.preemptible
    machine_type = var.machine_type

    service_account = google_service_account.kube_docker.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
