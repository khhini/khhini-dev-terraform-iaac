# resource "google_kms_key_ring" "mediamonitoring-kyr" {
#   name = "mediamonitoring-kyr"
#   location = "asia-southeast2"
# }

# resource "google_kms_crypto_key" "mediamonitoring_bkt-key" {
#   name = "mediamonitoring_bkt-key"
#   key_ring = "google_kms_key_ring.mediamonitoring-kyr.id"
  
# }