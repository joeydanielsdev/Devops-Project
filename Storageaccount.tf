
resource "azurerm_storage_account" "example" {
  name                     = "teamstorageact"
  resource_group_name      = azurerm_resource_group.mindbendersrg.name
  location                 = azurerm_resource_group.mindbendersrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}


#code to get storage primary access key: az storage account keys list --resource-group teamrg --account-name teamstorageact--query "[0].value" --output tsv