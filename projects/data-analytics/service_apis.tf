resource "google_project_service" "apis" {
  for_each = toset([
    "cloudresourcemanager.googleapis.com",
    "bigquery.googleapis.com",
    "storage.googleapis.com",
    "pubsub.googleapis.com",
    "cloudkms.googleapis.com",
    "secretmanager.googleapis.com"
  ])

  service = each.key
  disable_on_destroy = false
}