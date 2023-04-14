
module "data_analytics_project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name      = "data-analytics-prj"
  org_id    = var.org_id
  folder_id = google_folder.analytic.name

  enable_shared_vpc_host_project = true
  billing_account =  var.billing_account
}

module "ops_management_project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name      = "ops-management-prj"
  org_id    = var.org_id
  folder_id = google_folder.operation.name

  enable_shared_vpc_host_project = true
  billing_account =  var.billing_account
  
  bucket_project = "ops-management-prj"
  bucket_location = "asia-southeast2"
  bucket_versioning = true
}

# module "mediamonitoring_prj" {
#   source  = "terraform-google-modules/project-factory/google"
#   version = "~> 12.0"

#   name      = "mediamonitoring-prj"
#   org_id    = var.org_id
#   folder_id = google_folder.operation.name

#   enable_shared_vpc_host_project = true
#   billing_account =  var.billing_account
  
#   bucket_project = "ops-management-prj"
#   bucket_location = "asia-southeast2"
#   bucket_versioning = true
  
#   auto_create_network = true

#   activate_apis = [
#     "compute.googleapis.com",
#   ]
# }