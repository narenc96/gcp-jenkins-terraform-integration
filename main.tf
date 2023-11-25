provider "google" {
  project     = "jenkins-gke-267"
  region      = "us-central1"

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


module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 5.0"
  project_id  = "jenkins-gke-267"
  names = ["terraform", "cicd"]
  prefix = "jenkins-bucket-prefix"
  versioning = {
    first = true
  }
}
#### test file to push

