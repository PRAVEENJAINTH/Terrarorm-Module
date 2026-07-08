variable "vir_Nets"{}

resource "azurerm_virtual_network" "vir_Net" {
  for_each = var.vir_Nets
  name                = each.value.name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}