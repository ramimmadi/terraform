provider "google" {
  credentials = "${file("creds.json")}"
  project     = "next-2019"
  region      = "us-central"
}

resource "google_compute_network" "vpc-demo" {
  name                    = "test-vpc"
  project                 = "next-2019"
  auto_create_subnetworks = "false"
}

