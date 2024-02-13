provider "google" {
  project = "local-concord-408802"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}


############################
module "service-account" {
  source                             = "./.."
  name                               = "dev"
  environment                        = "test"
  google_service_account_key_enabled = true
  key_algorithm                      = "KEY_ALG_RSA_2048"
  public_key_type                    = "TYPE_X509_PEM_FILE"
  private_key_type                   = "TYPE_GOOGLE_CREDENTIALS_FILE"
  members                            = []
}