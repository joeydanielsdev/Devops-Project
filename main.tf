terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.103.1"
    }
  }
}

provider "azurerm" {
    features {}
}
resource "azurerm_resource_group" "mindbendersrg" {
  name = "Teamrg"
  location = "Uk South"
}


