variable "olaf" {
  default     = "test2main"
  type        = string
  description = "main file variable"
}
resource "azurerm_resource_group" "olafproject" {
  name     = "rg-auce-olafproject"
  location = var.location


}

resource "azurerm_storage_account" "olafproject" {
  name                     = var.name #saobjectbasicstorage
  resource_group_name      = azurerm_resource_group.olafproject.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  #   tags = {
  #     "env" = "learn dev"
  #   }

  tags = var.tags

}



resource "azurerm_storage_container" "olafproject" {
  name                  = "containerfoldertoorganize"
  storage_account_name  = azurerm_storage_account.olafproject.name
  container_access_type = "blob" # defaults to 'private'
}

resource "azurerm_storage_blob" "olafproject" {
  name                   = "readme.md"
  storage_account_name   = azurerm_storage_account.olafproject.name
  storage_container_name = azurerm_storage_container.olafproject.name
  type                   = "Block"
  source                 = "${path.module}/readme.md"
}


