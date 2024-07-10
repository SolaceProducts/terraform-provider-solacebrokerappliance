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
  skip_api_check  = true
}

resource "solacebroker_broker" "default" {
}
