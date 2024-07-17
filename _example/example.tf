provider "google" {
  project = "testing-gcp-ops"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}


#------------------------------------------(service-account)-------------------------------------------
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

