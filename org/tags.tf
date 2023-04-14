
# Tags Resoruces
resource "google_tags_tag_key" "project_tags_key" {
  parent = "organizations/${var.org_id}"
  short_name = "project"
  description = "Project tags"
}

resource "google_tags_tag_value" "project_tags_value" {
  parent = "tagKeys/${google_tags_tag_key.project_tags_key.name}"
  short_name = "hc-timetracking"
  description = "For value for project HC Time Trackings"
}