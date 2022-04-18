output "location" {
  value = var.location
}

output "storage_account_uri" {
  value = "${azurerm_storage_account.olafproject.primary_blob_endpoint}${azurerm_storage_container.olafproject.name}/${azurerm_storage_blob.olafproject.name}"
}