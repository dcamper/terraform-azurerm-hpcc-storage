terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0" // Version 3.x breaks stuff; see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/3.0-upgrade-guide
    }
  }
}

provider "random" {
}

provider "azurerm" {
  features {}
}

