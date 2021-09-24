resource "random_string" "random" {
  length  = 43
  upper   = false
  number  = false
  special = false
}

module "subscription" {
  source          = "github.com/Azure-Terraform/terraform-azurerm-subscription-data.git?ref=v1.0.0"
  subscription_id = data.azurerm_subscription.current.subscription_id
}

module "naming" {
  source = "github.com/Azure-Terraform/example-naming-template.git?ref=v1.0.0"
}

module "metadata" {
  source = "github.com/Azure-Terraform/terraform-azurerm-metadata.git?ref=v1.5.1"

  naming_rules = module.naming.yaml

  market              = local.metadata.market
  location            = var.azure_region
  sre_team            = local.metadata.sre_team
  environment         = local.metadata.environment
  product_name        = local.metadata.product_name
  business_unit       = local.metadata.business_unit
  product_group       = local.metadata.product_group
  subscription_type   = local.metadata.subscription_type
  resource_group_type = local.metadata.resource_group_type
  subscription_id     = data.azurerm_subscription.current.id
  project             = local.metadata.project
}

module "resource_group" {
  source = "github.com/Azure-Terraform/terraform-azurerm-resource-group.git?ref=v2.0.0"

  unique_name = false
  location    = var.azure_region
  names       = local.names
  tags        = local.tags
}

resource "azurerm_storage_account" "storage_account" {

  name                     = "${var.admin_username}${local.metadata.product_name}sa"
  resource_group_name      = module.resource_group.name
  location                 = module.resource_group.location
  account_tier             = local.storage.account_tier
  account_replication_type = local.storage.account_replication_type
  min_tls_version          = "TLS1_2"
  tags                     = local.tags
}

resource "azurerm_storage_share" "storage_shares" {
  for_each = local.storage.quotas

  name                 = each.key
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = each.value

  acl {
    id = random_string.random.result

    access_policy {
      permissions = "rwdl"
    }
  }
}
