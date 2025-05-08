# #If you want to loop over list(set) and map data type in terraform use for_each meta argument.

# variable "rglist" {
#   default = ["deeprg1","deeprg2","deeprg3"]
#   type = list(string)
#   description = "This is the list of resource group names"
# }

# resource "azurerm_resource_group" "list" {
#   for_each = toset(var.rglist)
#   name = each.key
#   location = "eastus"
# }

# variable "rgmap" {
#   type = map(string)
#   default = {
#     maprg1 = "eastus"
#     maprg2 = "westus"
#     maprg3 = "westus2"
#   }
# }

# resource "azurerm_resource_group" "map" {
#   for_each = var.rgmap
#   name = each.key
#   location = each.value
# }