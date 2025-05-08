# #Meta-Arguments - These arguments (key words) can be used with any resource time.

# resource "azurerm_resource_group" "example" {
#   name     = "DeepIps"
#   location = "westus"
# }

# resource "azurerm_public_ip" "example" {
#   name                = "DeepIP${count.index}"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"
#   count = 3
#   tags = {
#     environment = "Production"
#   }
# }

# output "PubIPs" {
#   value = local.pubips
# }

# locals {
#   pubips = azurerm_public_ip.example[*].ip_address
#   pubids = azurerm_public_ip.example[*].id
# }