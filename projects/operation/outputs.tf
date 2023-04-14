output "svc_cloudlogging_testing_creds" {
  value = "${google_service_account_key.svc_cloudlogging_testing_key.private_key}"
  sensitive = true
}