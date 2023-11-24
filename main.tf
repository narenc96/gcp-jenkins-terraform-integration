provider "google" {
  project     = "tcb-project-371706"
  #credentials = file("tcb-project-371706-b114ce01e529.json")
  region      = "us-east1"

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

