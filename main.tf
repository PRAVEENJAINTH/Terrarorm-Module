 

 module "rg" {
   source = "../child_module/azurerm_resource_group"
   rgs = var.resource_group
 }

 module "vnet" {
    depends_on = [module.rg]
   source = "../child_module/azurerm_virtual_network"
   vir_Nets = var.vir_Net
 }
 module "subnet" {     
    depends_on = [ module.vnet, module.rg ]
   source = "../child_module/azurerm_subnet"
   subnets = var.subnetn
 }
