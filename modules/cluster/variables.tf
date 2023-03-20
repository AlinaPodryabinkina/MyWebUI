variable "project" {
  type = string
}
variable "name_cluster" {
  type = string
}

variable "location" {
  type = string
}

variable "name_node_pool" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "service_account_id" {
  type = string
}

variable "node_count" {
  type = number
}

variable "auto_repair" {
  type = bool
}

variable "auto_upgrade" {
  type = bool
}

variable "preemptible" {
  type = bool
}

variable "remove_default_node_pool" {
  type = bool
}

variable "initial_node_count" {
  type = number
}

variable "vpc_network_name" {
  type = string
}

variable "subnetwork_name" {
  type = string
}

variable "zone" {
  type = string
}

variable "role_gke" {
  type = string
}
