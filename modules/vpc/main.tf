resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_network_name
  auto_create_subnetworks = var.auto_create_subnetworks
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnetwork_name
  ip_cidr_range = var.subnetwork_ip_cidr_range
  region        = var.region
  network       = google_compute_network.vpc_network.name
}

resource "google_compute_firewall" "network" {
  name    = var.firewall_name
  network = google_compute_network.vpc_network.name
  allow {
    protocol = var.allow_protocol
    ports    = var.allow_ports
  }

  source_ranges = var.source_ranges_network

  source_tags = var.tags
  target_tags = var.target_tags
}
