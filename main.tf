import {
  id = "projects/gke-autopilot-alpha/zones/us-central1-c/instances/manually-created-vm"
  to = google_compute_instance.default
}

resource "google_compute_instance" "default" {
  allow_stopping_for_update  = null
  can_ip_forward             = false
  deletion_protection        = false
  description                = null
  desired_status             = null
  enable_display             = false
  hostname                   = null
  key_revocation_action_type = "NONE"
  labels                     = {}
  machine_type               = "e2-micro"
  metadata = {
    enable-osconfig = "TRUE"
  }
  metadata_startup_script = null
  min_cpu_platform        = null
  name                    = "manually-created-vm"
  project                 = "gke-autopilot-alpha"
  resource_policies       = []
  tags                    = []
  zone                    = "us-central1-c"
  boot_disk {
    auto_delete                     = true
    device_name                     = "manually-created-vm"
    disk_encryption_key_raw         = null # sensitive
    disk_encryption_key_rsa         = null # sensitive
    disk_encryption_service_account = null
    force_attach                    = false
    guest_os_features               = ["UEFI_COMPATIBLE", "VIRTIO_SCSI_MULTIQUEUE", "GVNIC", "SEV_CAPABLE", "SEV_LIVE_MIGRATABLE_V2"]
    interface                       = null
    kms_key_self_link               = null
    mode                            = "READ_WRITE"
    source                          = "https://www.googleapis.com/compute/v1/projects/gke-autopilot-alpha/zones/us-central1-c/disks/manually-created-vm"
    initialize_params {
      architecture                = "X86_64"
      enable_confidential_compute = false
      image                       = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-12-bookworm-v20250709"
      labels                      = {}
      provisioned_iops            = 0
      provisioned_throughput      = 0
      resource_manager_tags       = {}
      resource_policies           = ["https://www.googleapis.com/compute/v1/projects/gke-autopilot-alpha/regions/us-central1/resourcePolicies/default-schedule-1"]
      size                        = 10
      snapshot                    = null
      storage_pool                = null
      type                        = "pd-balanced"
    }
  }
  confidential_instance_config {
    confidential_instance_type  = null
    enable_confidential_compute = false
  }
  network_interface {
    internal_ipv6_prefix_length = 0
    ipv6_address                = null
    network                     = "https://www.googleapis.com/compute/v1/projects/gke-autopilot-alpha/global/networks/default"
    network_attachment          = null
    network_ip                  = "10.128.0.8"
    nic_type                    = null
    queue_count                 = 0
    stack_type                  = "IPV4_ONLY"
    subnetwork                  = "https://www.googleapis.com/compute/v1/projects/gke-autopilot-alpha/regions/us-central1/subnetworks/default"
    subnetwork_project          = "gke-autopilot-alpha"
    access_config {
      nat_ip                 = "104.197.110.127"
      network_tier           = "PREMIUM"
      public_ptr_domain_name = null
    }
  }
  reservation_affinity {
    type = "ANY_RESERVATION"
  }
  scheduling {
    automatic_restart           = true
    availability_domain         = 0
    instance_termination_action = null
    min_node_cpus               = 0
    on_host_maintenance         = "MIGRATE"
    preemptible                 = false
    provisioning_model          = "STANDARD"
    termination_time            = null
  }
  service_account {
    email  = "1039835466789-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }
  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }
}