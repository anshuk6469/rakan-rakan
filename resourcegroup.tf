resource "azurerm_resource_group" "example" {
  name     = "Deep-rg"
  location = "eastus2"
}

# Resource names must be unique per type in each module.
# resource "azurerm_resource_group" "example2" {  #Same resource type can't have same local-name
#   name     = "Deep-rg2"
#   location = "eastus"
# }

# resource "azurerm_resource_group" "example3" {  #Same resource type can't have same local-name
#   name     = "Deep-rg3"
#   location = "eastus"
# }


# resource "azurerm_public_ip" "example" {
#   name                = "DeepIP"
#   resource_group_name = azurerm_resource_group.example2.name 
#   location            = azurerm_resource_group.example2.location      #Refrencing
#   allocation_method   = "Static"

#   tags = {
#     environment = "Terraform"
#   }
# }

# #Refrencing is also important to resolve the internal dependency of resources.
# #To Connect two resources together we always use refrencing.

#Ctrl + A - Select all code for you
#Ctrl + / - Comment/Uncomment for you

resource "azurerm_resource_group" "import" {
  name = "Portal"
  location = "westus2"
}