# resource "azurerm_public_ip" "example2" {
#   name                = "DeepIP2"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_network_interface" "example2" {
#   name                = "Deep-nic2"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id = azurerm_public_ip.example2.id
#   }
# }

# resource "azurerm_windows_virtual_machine" "example2" {
#   name                = "Deep-machine2"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   size                = "Standard_D2s_v3"
#   admin_username      = "student"
#   admin_password      = "Pa$$w0rd@6469"
#   network_interface_ids = [
#     azurerm_network_interface.example2.id,
#   ]

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "microsoftwindowsdesktop"
#     offer     = "windows-11"
#     sku       = "win11-22h2-ent"
#     version   = "latest"
#   }
# }