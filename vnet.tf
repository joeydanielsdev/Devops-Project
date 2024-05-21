# Creating virtual network

resource "azurerm_virtual_network" "mindbendersVnet" {
  name = "TeamVnet"
  address_space = [ "10.0.0.0/16" ]
  location = azurerm_resource_group.mindbendersrg
  resource_group_name = azurerm_resource_group.mindbendersrg
}

#Creating SUbnets for Frontend and Backend

resource "azurerm_subnet" "mindbenderssubnet-fe" {
    name = "teamsubnet-fe"
    resource_group_name = azurerm_resource_group.mindbendersrg
    virtual_network_name = azurerm_virtual_network.mindbendersVnet
    address_prefixes = [ "10.0.1.0/24" ]
}
resource "azurerm_subnet" "mindbenderssubnet-be" {
    name = "teamsubnet-be"
    resource_group_name = azurerm_resource_group.mindbendersrg
    virtual_network_name = azurerm_virtual_network.mindbendersVnet
    address_prefixes = [ "10.0.2.0/24" ]
}