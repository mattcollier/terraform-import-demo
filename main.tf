locals {
  project = "gke-autopilot-alpha"
  zone    = "us-central1"
  name    = "manually-created-vm"
}

import {
  id = "projects/${local.project}/zones/${local.zone}/instances/${local.name}"
  to = google_compute_instance.default
}