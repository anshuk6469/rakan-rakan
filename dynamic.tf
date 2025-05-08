# variable "rules" {
#   default = {
#     ssh = {
#       priority = 100
#       destination_port_range = "22"
#     }
#      http = {
#       priority = 101
#       destination_port_range = "80"
#     }
#   }
# }

# resource "azurerm_resource_group" "example" {
#   name     = "Deep-nsg"
#   location = "West Europe"
# }

# resource "azurerm_network_security_group" "example" {
#   name                = "Nsg"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   dynamic "security_rule" {
#     for_each = var.rules
#     content {
#      name                       = security_rule.key
#      priority                   = security_rule.value.priority
#      direction                  = "Inbound"
#      access                     = "Allow"
#      protocol                   = "Tcp"
#      source_port_range          = "*"
#      destination_port_range     = security_rule.value.destination_port_range
#      source_address_prefix      = "*"
#      destination_address_prefix = "*"
#     } 
#   }

#   tags = {
#     environment = "Production"
#   }
# }