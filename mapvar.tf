# variable "rginfo" {
#   type = map(string)
#   default = {
#     name1 = "deepmap1"
#     location1 = "eastus"
#     name2 = "deepmap2"
#     location2 = "westus"
#   }
# }

# resource "azurerm_resource_group" "map" {
#   name = var.rginfo.name1
#   location = var.rginfo.location1
# }

# resource "azurerm_resource_group" "map2" {
#   name = var.rginfo.name2
#   location = var.rginfo.location2
# }