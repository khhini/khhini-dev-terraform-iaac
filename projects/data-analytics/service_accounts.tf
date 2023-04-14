resource "google_service_account" "svc_mediamonitoring" {
  account_id = "svc-mediamonitoring"
  display_name = "Media Monitoring Service Account"
}

data "google_storage_project_service_account" "gcs_account"{
}

