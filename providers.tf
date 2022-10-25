##################################################################################
# TERRAFORM CONFIG
##################################################################################

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" #Azure Resource Manager Provider
      version = "~>3.28.0"          #> atleast version 3.28.0 But ~ limits it to version 3, so minor version updates are allowed but not major versions.
      #alias
      #subscription_id = var.subscription_id
      #client_id = var.client_id
      #client_secret = var.client_secret
    }
  }

  #Store the Terraform state file in Azure Storage
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate20232"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    access_key           = "wT7InyJCWyCq1iPTKCSqhefAjJJ22Rb6aqe2+d4bX3sHCcWNV9AIgFNbA/LpGARgRFFTRC7cvVGJ+AStMS+rRw=="
  }
}

##################################################################################
# PROVIDERS
##################################################################################
provider "azurerm" {
  features {}
}
