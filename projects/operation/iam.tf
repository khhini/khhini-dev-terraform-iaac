resource "google_project_iam_binding" "logging_writer_binding" {
  project = var.project_id
  role = "roles/logging.logWriter"
  members = [
    "serviceAccount:${google_service_account.svc_cloudlogging_testing.email}"
  ]
}