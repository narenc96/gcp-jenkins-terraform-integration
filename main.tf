provider "google" {
  project     = "jenkins-gke-267"
  region      = "us-central1"
  CREDENTIALS_ID = '73eb42fa-6eae-4eb1-8402-83948dd827f7'

}

resource "google_compute_network" "vpc1" {
  name                    = "my-custom-network-1"
  auto_create_subnetworks = "false"

}

resource "google_compute_subnetwork" "my-custom-subnet1" {
  name          = "my-custom-subnet-1"
  ip_cidr_range = "10.255.196.0/24"
  network       = google_compute_network.vpc1.name
  region        = "us-east1"
}



#### test file to push

