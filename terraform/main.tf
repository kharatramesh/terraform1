provider "azurerm" {
  features {}
}

locals {
  rg_tag = "${terraform.workspace}-module1"
}
resource "azurerm_resource_group" "hexa-day6-rg1" {
  name     = "hexa-day6-rg1"
  location = "centralindia"
  tags = {
    Name = local.rg_tag
      }
}
