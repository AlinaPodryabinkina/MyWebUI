module "network" {
  source                   = "../modules/vpc"
  region                   = var.region
  auto_create_subnetworks  = var.auto_create_subnetworks
  vpc_network_name         = var.vpc_network_name
  subnetwork_name          = var.subnetwork_name
  subnetwork_ip_cidr_range = var.subnetwork_ip_cidr_range
  firewall_name            = var.firewall_name
  allow_protocol           = var.allow_protocol
  allow_ports              = var.allow_ports
  source_ranges_network    = var.source_ranges_network
  tags                     = var.tags
  target_tags              = var.target_tags
}


module "cluster" {
  source                   = "../modules/cluster"
  service_account_id       = var.service_account_id
  role_gke                 = var.role_gke
  project                  = var.project
  zone                     = var.zone
  name_cluster             = var.name_cluster
  remove_default_node_pool = var.remove_default_node_pool
  location                 = var.zone
  vpc_network_name         = module.network.vnet_name
  subnetwork_name          = module.network.subnet_name
  name_node_pool           = var.name_node_pool
  initial_node_count       = var.initial_node_count
  machine_type             = var.machine_type
  node_count               = var.node_count
  auto_repair              = var.auto_repair
  auto_upgrade             = var.auto_upgrade
  preemptible              = var.preemptible
}


module "gar" {
  source        = "../modules/gar"
  project       = var.project
  region        = var.region
  repository_id = var.repository_id
  description   = var.description
  format        = var.format
  account_id    = var.account_id
  display_name  = var.display_name
  role_gar      = var.role_gar
}
