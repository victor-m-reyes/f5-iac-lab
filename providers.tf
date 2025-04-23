terraform {
  required_providers {
    bigip = {
      source  = "F5Networks/bigip"
      version = "~> 1.16"
    }
  }

  required_version = ">= 1.0"
}
