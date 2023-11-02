terraform {
  required_providers {
    solacebroker = {
      source = "registry.terraform.io/solaceproducts/solacebrokerappliance"
    }
  }
}

# Configure the provider
provider "solacebroker" {
  username = "admin"
  password = "admin"
  url      = "http://appliance_url:80"
}

# Create a message-vpn on the event broker
resource "solacebroker_msg_vpn" "test" {
  msg_vpn_name        = "new"
  enabled             = true
  max_msg_spool_usage = 10
}

# Create a messaging queue - notice the dependency on message-vpn
resource "solacebroker_msg_vpn_queue" "q" {
  msg_vpn_name    = solacebroker_msg_vpn.test.msg_vpn_name
  queue_name      = "green"
  ingress_enabled = true
  egress_enabled  = true
}
