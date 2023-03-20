output "vnet_name" {
  description = "The Name of vpc"
  value       = google_compute_network.vpc_network.name
}

output "subnet_name" {
  description = "The name of subnet"
  value       = google_compute_subnetwork.subnet.name
}
