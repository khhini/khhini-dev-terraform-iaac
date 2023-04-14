resource "google_project_service" "apis" {
  for_each = toset([
    "logging.googleapis.com",
  ])

  service = each.key
  disable_on_destroy = false
}