variable "project" {
  description = "The name of the project"
  type        = string
}

variable "region" {
  description = "The default compute region"
  type        = string
}

variable "zone" {
  description = "The default compute zone"
  type        = string
}

variable "repository_id" {
  description = "The name of the Artifact Registry repository to be created"
  type        = string
}

variable "auto_create_subnetworks" {
  type = bool
}

variable "vpc_network_name" {
  type = string
}

variable "subnetwork_name" {
  type = string
}

variable "subnetwork_ip_cidr_range" {
  type = string
}

variable "name_cluster" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "service_account_id" {
  type = string
}

variable "name_node_pool" {
  type = string
}

variable "static_ip_name" {
  type = string
}

variable "firewall_name" {
  type = string
}

variable "allow_protocol" {
  type = string
}

variable "allow_ports" {
  type = list(any)
}

variable "source_ranges_network" {
  type = list(any)
}

variable "tags" {
  type = list(any)
}

variable "target_tags" {
  type = list(any)
}

variable "node_count" {
  type = number
}

variable "auto_repair" {
  type = string
}

variable "auto_upgrade" {
  type = string
}

variable "preemptible" {
  type = string
}

variable "remove_default_node_pool" {
  type = bool
}

variable "initial_node_count" {
  type = number
}

variable "format" {
  type = string
}

variable "display_name" {
  type = string
}

variable "account_id" {
  type = string
}

variable "role_gar" {
  type = string
}

variable "role_gke" {
  type = string
}

variable "description" {
  type = string
}
