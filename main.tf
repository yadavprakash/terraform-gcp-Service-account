module "labels" {
  source      = "git::git@github.com:opsstation/terraform-gcp-labels.git?ref=v1.0.0"
  name        = var.name
  environment = var.environment
  label_order = var.label_order
  managedby   = var.managedby
  repository  = var.repository
}
data "google_client_config" "current" {
}
########################################(service_account)###############################################
resource "google_service_account" "service_account" {
  count        = var.google_service_account_enabled && var.enabled ? 1 : 0
  account_id   = var.account_id
  display_name = var.display_name
  disabled     = var.disabled
  project      = data.google_client_config.current.project
}

########################################(key)###########################################################
resource "google_service_account_key" "mykey" {
  count              = var.google_service_account_key_enabled && var.enabled ? 1 : 0
  service_account_id = join("", google_service_account.service_account[*].name)
  public_key_type    = var.public_key_type
  private_key_type   = var.private_key_type
  keepers            = var.keepers
  key_algorithm      = var.key_algorithm
}

###########################################(iam)########################################################
resource "google_service_account_iam_binding" "admin-account-iam" {
  count              = var.google_service_account_iam_binding_enabled && var.enabled ? 1 : 0
  service_account_id = join("", google_service_account.service_account[*].name)
  role               = var.role[0]
  members            = var.members
}