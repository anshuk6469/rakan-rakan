terraform {
  backend "s3" {
    bucket = "anshuk64691"
    key = "terraform.tfstate"
    region = "us-east-1"
    access_key = "AKIAZI2LHRHSANGQXGVY"
    secret_key = "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"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.27" #~ -> tilde -> Last number can be x 
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.96.0,<6.0.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
  }
  subscription_id = "853976da-1943-482f-be67-2d729c61ef50"
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAZI2LHRHSANGQXGVY"
  secret_key = "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"
}

# block-type "block-label" {
#   key = values #arguments
# }