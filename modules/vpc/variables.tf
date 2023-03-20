variable "auto_create_subnetworks" {
  type = bool
}

variable "region" {
  type = string
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

