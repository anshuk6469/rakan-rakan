# module "vnet" {
#   source  = "Azure/vnet/azurerm"
#   version = "5.0.1"
#   resource_group_name = "Portal"
#   vnet_location = "westus2"
#   vnet_name = "Deep-vnet"
# }

# module "vnet2" {
#   source  = "Azure/vnet/azurerm"
#   version = "5.0.1"
#   resource_group_name = "Portal"
#   vnet_location = "westus2"
#   vnet_name = "Deep-vnet2"
# }

# module "virtual-machine" {
#   source  = "Azure/virtual-machine/azurerm"
#   version = "2.0.0"
#   image_os = "linux"
#   location = "westus2"
#   resource_group_name = "Portal"
#   name = "DeepLinux"
#   os_disk = {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }
#   size = "Standard_F2"
#   subnet_id = module.vnet.vnet_subnets[0]
#   os_simple = "UbuntuServer"
# }
