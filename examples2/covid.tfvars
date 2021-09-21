admin = {
  name  = "dcamper"
  email = "dan.camper@lexisnexisrisk.com"
}

metadata = {
  project             = "covid2dev"
  product_name        = "data"
  business_unit       = "infra"
  environment         = "sandbox"
  market              = "us"
  product_group       = "solutionslab"
  resource_group_type = "app"
  sre_team            = "solutionslab"
  subscription_type   = "dev"
}

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

# disable_naming_conventions = false # true will enforce all metadata inputs below
