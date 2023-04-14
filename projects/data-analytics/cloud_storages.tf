resource "google_storage_bucket" "riset-mediamonitoring-bkt" {
  name = "riset-mediamonitoring-bkt"
  location = "asia-southeast2"

  force_destroy = true
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  # encryption {
  #   default_kms_key_name = google_kms_crypto_key.mediamonitoring_bkt-key.name
  # }
}

resource "google_storage_bucket_iam_binding" "riset_mediamonitoring_bkt_obj_creator_binding" {
  bucket = google_storage_bucket.riset-mediamonitoring-bkt.name
  role = "roles/storage.objectCreator"
  members = [
    "serviceAccount:${google_service_account.svc_mediamonitoring.email}",
    "serviceAccount:bq-media-monitoring@data-processing-cisdi.iam.gserviceaccount.com",
    "serviceAccount:svc-cloudlogging-testing@ops-management-prj.iam.gserviceaccount.com"
  ]
  
}

resource "google_storage_bucket_iam_binding" "riset_mediamonitoring_bkt_obj_viewer_binding" {
  bucket = google_storage_bucket.riset-mediamonitoring-bkt.name
  role = "roles/storage.objectViewer"
  members = [
    "user:kiki.hutapea@cisdi.org",
  ]
  
}

resource "google_storage_notification" "riset_mediamonitoring_bkt_notification" {
  bucket = google_storage_bucket.riset-mediamonitoring-bkt.name
  payload_format = "JSON_API_V1"
  
  object_name_prefix = "mediamonitoring/"
  topic = google_pubsub_topic.mediamonitoring_psb_topics.id
}