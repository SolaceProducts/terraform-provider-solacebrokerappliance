---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_msg_vpn_jndi_topic Data Source - solacebroker"
subcategory: ""
description: |-
  The message broker provides an internal JNDI store for provisioned Topic objects that clients can access through JNDI lookups.
  The minimum access scope/level required to perform this operation is "vpn/read-only".
  This has been available since SEMP API version 2.4.
---

# solacebroker_msg_vpn_jndi_topic (Data Source)

The message broker provides an internal JNDI store for provisioned Topic objects that clients can access through JNDI lookups.



The minimum access scope/level required to perform this operation is "vpn/read-only".

This has been available since SEMP API version 2.4.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `msg_vpn_name` (String) The name of the Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `topic_name` (String) The JNDI name of the JMS Topic.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".

### Read-Only

- `physical_name` (String) The physical name of the JMS Topic.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `""`.
