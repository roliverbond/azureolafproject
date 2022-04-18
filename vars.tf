variable "location" {
  default = "australiacentral"
  type    = string


}

variable "tags" {
  type = map(any)

}

variable "azurerm_resource_group" {
  type        = string
  description = "rg-auce-olafproject"

}

variable "name" {
  type        = string
  description = "Name of the storage account"


}
