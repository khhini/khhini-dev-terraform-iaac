# resource "google_project_iam_binding" "logging_writer_binding" {
#   project = var.project_id
#   role = "roles/storage.objectCreator"
#   members = [
#     "serviceAccount:svc-cloudlogging-testing@ops-management-prj.iam.gserviceaccount.com"
#   ]
# }