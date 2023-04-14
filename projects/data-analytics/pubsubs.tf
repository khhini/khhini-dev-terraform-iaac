resource "google_pubsub_topic" "mediamonitoring_psb_topics" {
  name = "mediamonitoring-psb-topics"
}

resource "google_pubsub_topic_iam_binding" "mediamonitoring_psb_topics_binding" {
  topic = google_pubsub_topic.mediamonitoring_psb_topics.id
  role = "roles/pubsub.publisher"
  members = [
    "serviceAccount:${data.google_storage_project_service_account.gcs_account.email_address}"
  ]
}

resource "google_pubsub_subscription" "mediamonitoring_psb_subs" {
  name = "mediamonitoring-psb-subs"
  topic = google_pubsub_topic.mediamonitoring_psb_topics.name
}

resource "google_pubsub_subscription_iam_binding" "name" {
  subscription = google_pubsub_subscription.mediamonitoring_psb_subs.id
  role = "roles/pubsub.subscriber"
  members = [
    "serviceAccount:bq-media-monitoring@data-processing-cisdi.iam.gserviceaccount.com"
  ]
}