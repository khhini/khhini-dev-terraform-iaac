variable "org_id"{
  description = "The organization id for the associated resources"
  type        = string
  default     = "752831066554"
}

variable "project_id" {
  description = "The organization id for the associated resources"
  type        = string
  default     = "ops-management-prj"
}

variable "folder_id"{
  description = "The organization id for the associated resources"
  type        = string
  default     = "440890158014"
}

variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
  default     = "0194EE-28990F-68B21D"
}

variable "region" {
  type        = string
  default     = "asia-southeast2"
}

variable "zone" {
  type        = string
  default     = "asia-southeast2-a"
}