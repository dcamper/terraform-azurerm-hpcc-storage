admin = {
  name  = "dcamper"
  email = "dan.camper@lexisnexisrisk.com"
}

metadata = {
  project             = "play"
  product_name        = "playdata"
  business_unit       = "infra"
  environment         = "sandbox"
  market              = "us"
  product_group       = "solutionslab"
  resource_group_type = "app"
  sre_team            = "solutionslab"
  subscription_type   = "dev"
}

# Resource group will be named: ${metadata.resource_group_type}-${metadata.product_name}-${metadata.environment}-${metadata.location}
# Storage account will be named: ${admin.name}${metadata.product_name}sa

tags = {
  justification = "testing"
  owner_email   = "dan.camper@lexisnexisrisk.com"
  owner         = "Dan S. Camper"
}

resource_group = {
  unique_name = false
  location    = "eastus2"
}

storage = {
  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  quotas = {
    dali  = 3
    data  = 2
    dll   = 2
    lz    = 2
    sasha = 5
  }
}

disable_naming_conventions = false
