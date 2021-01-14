
variable "project" {
  type        = string
  description = "Project"
}

variable "network" {
  type        = string
  description = "VPC network for image to be created in"
}

variable "subnetwork" {
  type        = string
  description = "VPC subnetwork for image to be created in"
}

variable "zone" {
  type        = string
  description = "Zone for the image"
}

variable "region" {
  type        = string
  description = "Region for the image"
}

variable "gke_cluster_name" {
    type = string
    default = "dev-cluster"
}