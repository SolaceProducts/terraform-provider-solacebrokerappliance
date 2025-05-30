---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_msg_vpn_cert_matching_rule_attribute_filter Resource - solacebroker"
subcategory: ""
description: |-
  A Cert Matching Rule Attribute Filter compares a username attribute to a string.
  The minimum access scope/level required to perform this operation is "vpn/read-only".
  This has been available since SEMP API version 2.28.
  The import identifier for this resource is {msg_vpn_name}/{rule_name}/{filter_name}, where {&lt;attribute&gt;} represents the value of the attribute and it must be URL-encoded.
---

# solacebroker_msg_vpn_cert_matching_rule_attribute_filter (Resource)

A Cert Matching Rule Attribute Filter compares a username attribute to a string.



The minimum access scope/level required to perform this operation is "vpn/read-only".

This has been available since SEMP API version 2.28.

The import identifier for this resource is `{msg_vpn_name}/{rule_name}/{filter_name}`, where {&lt;attribute&gt;} represents the value of the attribute and it must be URL-encoded.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `filter_name` (String) The name of the filter.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `msg_vpn_name` (String) The name of the Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `rule_name` (String) The name of the rule.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".

### Optional

- `attribute_name` (String) Client Username Attribute to be tested.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "global/mesh-manager". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `""`.
- `attribute_value` (String) Expected attribute value.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "global/mesh-manager". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `""`.
