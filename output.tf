# #Output Block - Will help you print values out on the terminals
# variable "rgname" {
#    default = "DeepOut2"
#    description = "This is the name of the variable"
#    type = string        #With type constraint you can fix the data type of the variable.
# }


# resource "azurerm_resource_group" "example" {
#   name     = var.rgname
#   location = "West Europe"
# }

# resource "azurerm_public_ip" "example" {
#   name                = var.rgname == "DeepOut" ? "DeepIP" : "OutIP"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# output "ipadd" {
#   value = azurerm_public_ip.example.ip_address
# }

# output "ipid" {
#   value = azurerm_public_ip.example.id
# }