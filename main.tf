

# resource "google_container_cluster" "primary" {
#   name                  = "gor-wp-cluster"
#   location              = var.region
#   initial_node_count    = 1

#   network               = var.network
#   subnetwork            = var.subnetwork

# }

provider "google" {
  alias        = "gor-wp-test"
  credentials = file("../../gcp_credentials/gcp-dev-credentials.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}