# resource "azurerm_resource_group" "example" {
#   name     = "DeepVM"
#   location = "westus"
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "Deep-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

# resource "azurerm_subnet" "example" {
#   name                 = "internal"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_public_ip" "example" {
#   name                = "DeepIP"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_network_interface" "example" {
#   name                = "Deep-nic"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id = azurerm_public_ip.example.id
#   }
# }

# resource "azurerm_windows_virtual_machine" "example" {
#   name                = "Deep-machine"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   size                = "Standard_D2s_v3"
#   admin_username      = "student"
#   admin_password      = "Pa$$w0rd@6469"
#   network_interface_ids = [
#     azurerm_network_interface.example.id,
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


# resource "azurerm_network_security_group" "example" {
#   name                = "DeepNSG"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   security_rule {
#     name                       = "RDPPort"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "3389"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }

#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_subnet_network_security_group_association" "example" {
#   subnet_id                 = azurerm_subnet.example.id
#   network_security_group_id = azurerm_network_security_group.example.id
# }

# # resource "azurerm_managed_disk" "example" {
# #   name                 = "Deep-disk1"
# #   location             = azurerm_resource_group.example.location
# #   resource_group_name  = azurerm_resource_group.example.name
# #   storage_account_type = "Standard_LRS"
# #   create_option        = "Empty"
# #   disk_size_gb         = 10
# # }

# # resource "azurerm_virtual_machine_data_disk_attachment" "example" {
# #   managed_disk_id    = azurerm_managed_disk.example.id
# #   virtual_machine_id = azurerm_windows_virtual_machine.example.id
# #   lun                = "10"
# #   caching            = "ReadWrite"
# # }