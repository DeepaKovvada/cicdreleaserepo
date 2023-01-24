resource "azurerm_resource_group" "example" {
  name     = "cicdrg1"
  location = "westus2"
}

resource "azurerm_managed_disk" "example" {
  name                 = "testcicd"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"

  tags = {
    environment = "staging"
  }
}
