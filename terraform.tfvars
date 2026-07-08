resource_group = {
    rg1 = {
        name     = "rg-example1"
        location = "eastus"
    }
     rg2 = {
        name     = "rg-example2"
        location = "eastus"
    }
}   

vir_Net = {
        vnet1 = {
            name                = "vnet-example1"
            address_space       = ["10.0.0.0/16"]
            location            = "eastus"
            resource_group_name = "rg-example1"
        }
     vnet2 = {
        name                = "vnet-example2"
        address_space       = ["10.1.0.0/16"]
        location            = "eastus"
        resource_group_name = "rg-example2"
    }}

subnetn = {
        subnet1 = {
            name                 = "subnet-example1"
            resource_group_name  = "rg-example1"
            virtual_network_name = "vnet-example1"
            address_prefixes     = ["10.0.1.0/24"]
        }
        subnet2 = {
            name                 = "subnet-example2"
            resource_group_name  = "rg-example2"
            virtual_network_name = "vnet-example2"
            address_prefixes     = ["10.1.1.0/24"]
        }
    }

   