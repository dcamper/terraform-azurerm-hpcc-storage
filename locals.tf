locals {
  metadata = {
    project             = "hpcc_k8s_sa"
    product_name        = lower(var.product_name)
    business_unit       = "infra"
    environment         = "sandbox"
    market              = "us"
    product_group       = "solutionslab"
    resource_group_type = "shared"
    sre_team            = "solutionslab"
    subscription_type   = "dev"
  }

  names = module.metadata.names

  #----------------------------------------------------------------------------

  enforced_tags = {
    "admin" = var.admin_name
    "email" = lower(var.admin_email)
    "owner" = var.admin_name
    "owner_email" = lower(var.admin_email)
  }
  tags = merge(module.metadata.tags, local.enforced_tags, try(var.extra_tags, {}))

  #----------------------------------------------------------------------------

  storage = {
    access_tier              = "Hot"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"

    quotas = {
      "dalishare" = 3,
      "dllsshare" = 2,
      "sashashare" = 2,
      "datashare" = 5,
      "lzshare" = 3
    }
  }
}
