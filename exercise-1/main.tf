provider "google" {
  project = "1074157869928"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "terraform" {
  project      = "1074157869928"
  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
