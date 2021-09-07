terraform {  

    required_providers {  

        azurerm = {  

            source  = "hashicorp/azurerm"  

            version = ">=2.0"  

        }  

    }  

 
 

#terraform cloud config   

    backend "remote" {  

        organization = "zmwarelab-azure-pepeline"  

    workspaces {  

        name = "test_pipelines_azure"  

    }  

  }  

}  

# Configure the Microsoft Azure Provider  

provider "azurerm" {  

    skip_provider_registration = "true"  

    features {}   

}  

 
 

#create azure container registry   

resource "azurerm_container_registry" "acr" {  

    name                     = "myfirstazurepipeline12"  

    resource_group_name      = "test-azure-pepline" 

    location                 = "eastus" 

    sku                      = "Premium"  

    admin_enabled            = false  

 
 

} 

 