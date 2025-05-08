# data "azurerm_resource_group" "example" {
#   name = "Portal"
# }

# resource "azurerm_public_ip" "example" {
#   name                = "DeepIp"
#   resource_group_name = data.azurerm_resource_group.example.name
#   location            = data.azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
#   provisioner "local-exec" {
#     command = "echo ${self.ip_address} > ipadd.txt"
#   }
# }