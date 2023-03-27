resource "google_compute_instance" "default" {
  name         = "lech-warsaw-docker-instance"
  machine_type = "e2 micro"
  zone         = "us-east1-b"
  tags         = ["ssh"]

  boot_disk {
    initialize_params {
      image = "cos-stable-101-17162-127-42"
    }
  }

}