# resource "azurerm_resource_group" "dep1" {
#   name     = "deepdep1"
#   location = "eastus"
# }

# resource "azurerm_resource_group" "dep2" {
#   name       = "deepdep2"
#   location   = "eastus"
#   depends_on = [azurerm_resource_group.dep1]
# }