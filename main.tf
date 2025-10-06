terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {

  project = "qwiklabs-gcp-01-c1f378517fc8"
  region  = "us-west1"
  zone    = "us-west1-a"
}
resource "google_compute_instance" "terraform" {
  name         = "terraform"
  machine_type = "e2-medium"
  tags         = ["web" , "dev"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }

  }
  allow_stopping_for_update = true
}





