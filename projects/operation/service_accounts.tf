resource "google_service_account" "svc_cloudlogging_testing" {
  account_id = "svc-cloudlogging-testing"
  display_name = "Tessting Cloud Logging Writter"
}

resource "google_service_account_key" "svc_cloudlogging_testing_key" {
  service_account_id = google_service_account.svc_cloudlogging_testing.id
}