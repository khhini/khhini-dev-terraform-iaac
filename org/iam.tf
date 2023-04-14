module "organization-iam" {
  source  = "terraform-google-modules/iam/google//modules/organizations_iam"
  version = "~> 7.4"

  organizations = ["752831066554"]

  bindings = {
    
    "roles/billing.admin" = [
      "group:gcp-billing-admins@khhini.dev",
    ]
    
    "roles/resourcemanager.organizationAdmin" = [
      "group:gcp-organization-admins@khhini.dev",
    ]
    
  }
}


module "development-iam" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [google_folder.development.name]

  bindings = {
    
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@khhini.dev",
    ]
    
    "roles/container.admin" = [
      "group:gcp-developers@khhini.dev",
    ]
    
  }
}


module "operation-iam" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [google_folder.operation.name]

  bindings = {
    
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@khhini.dev",
    ]
    
    "roles/container.admin" = [
      "group:gcp-developers@khhini.dev",
    ]
    
  }
}

module "analytic-iam" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [google_folder.analytic.name]

  bindings = {
    
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@khhini.dev",
    ]
    
    "roles/container.admin" = [
      "group:gcp-developers@khhini.dev",
    ]
    
  }
}
