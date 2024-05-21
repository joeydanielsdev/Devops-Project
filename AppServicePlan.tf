#Creating APPServicePlans 

resource "azurerm_app_service_plan" "fe-asp" {
  name                = "frontend-asp"
  location = azurerm_resource_group.mindbendersrg.location
  resource_group_name = azurerm_resource_group.mindbendersrg.name

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service_plan" "fe-asp" {
  name                = "backend-asp"
  location = azurerm_resource_group.mindbendersrg.location
  resource_group_name = azurerm_resource_group.mindbendersrg.name

  sku {
    tier = "Basic"
    size = "B1"
  }
}
