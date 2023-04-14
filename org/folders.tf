resource "google_folder" "analytic" {
  display_name = "Analytic"
  parent = "organizations/${var.org_id}"
}

resource "google_folder" "operation" {
  display_name = "Operation"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "development" {
  display_name = "Development"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "production" {
  display_name = "Production"
  parent       = "organizations/${var.org_id}"
}
