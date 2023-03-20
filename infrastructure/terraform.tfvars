project = "my-project-from-python"

region = "europe-central2"

zone   = "europe-central2-a"

repository_id = "docker-repo"

vpc_network_name = "vpc-for-web"

auto_create_subnetworks = "false"

subnetwork_name = "web-subnet"

machine_type = "e2-micro"

subnetwork_ip_cidr_range = "10.0.1.0/24"

static_ip_name = "ipv4-address"

firewall_name = "net-firewall"

allow_protocol = "tcp"

allow_ports   = ["22", "80", "443", "5000"]

source_ranges_network = ["0.0.0.0/0"]

tags = [
    "development",
    "podryabinkina"
  ]
  
target_tags = ["http-server", "https-server"]

name_cluster = "flask-cluster"

service_account_id = "gke-kube"

node_count = 2

name_node_pool = "nodes-1"

auto_repair = "true"

auto_upgrade = "true"

preemptible = "true"

remove_default_node_pool = "true" 

initial_node_count       = 1

format = "DOCKER"

display_name = "Docker Container Pusher"

account_id = "docker-push"

role_gar = "roles/artifactregistry.writer"

role_gke = "roles/container.clusterAdmin"

description = "My docker repository"
