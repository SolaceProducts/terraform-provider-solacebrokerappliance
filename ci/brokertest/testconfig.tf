terraform {
  required_providers {
    solacebroker = {
      source = "registry.terraform.io/solaceproducts/solacebrokerappliance"
    }
  }
}

provider solacebroker {
  username       = "admin"
  password       = "admin"
  url            = "http://localhost:8080"
}

resource "solacebroker_broker" "default" {
}
