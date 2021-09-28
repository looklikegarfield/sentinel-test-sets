resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  tags = ["terraform", "tst"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  labels = {

    env       = "tst"
    terraform = "true"

  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}