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
  location = "Uk SOuth"
}
resource "azurerm_virtual_network" "mindbendersVnet" {
  name = "TeamVnet"
  address_space = [ "10.0.0.0/16" ]
  location = azurerm_resource_group.mindbendersrg
  resource_group_name = azurerm_resource_group.mindbendersrg
}
resource "azurerm_subnet" "mindbenderssubnet" {
    name = "Teamsubnet"
    resource_group_name = azurerm_resource_group.mindbendersrg
    virtual_network_name = azurerm_virtual_network.mindbendersVnet
    address_prefixes = [ "10.0.2.0/24" ]
  
}