---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_msg_vpn_distributed_cache_cluster_global_caching_home_cluster_topic_prefix Resource - solacebroker"
subcategory: ""
description: |-
  A Topic Prefix is a prefix for a global topic that is available from the containing Home Cache Cluster.
  The minimum access scope/level required to perform this operation is "vpn/read-only".
  This has been available since SEMP API version 2.11.
  The import identifier for this resource is {msg_vpn_name}/{cache_name}/{cluster_name}/{home_cluster_name}/{topic_prefix}, where {&lt;attribute&gt;} represents the value of the attribute and it must be URL-encoded.
---

# solacebroker_msg_vpn_distributed_cache_cluster_global_caching_home_cluster_topic_prefix (Resource)

A Topic Prefix is a prefix for a global topic that is available from the containing Home Cache Cluster.



The minimum access scope/level required to perform this operation is "vpn/read-only".

This has been available since SEMP API version 2.11.

The import identifier for this resource is `{msg_vpn_name}/{cache_name}/{cluster_name}/{home_cluster_name}/{topic_prefix}`, where {&lt;attribute&gt;} represents the value of the attribute and it must be URL-encoded.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `cache_name` (String) The name of the Distributed Cache.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `cluster_name` (String) The name of the Cache Cluster.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `home_cluster_name` (String) The name of the remote Home Cache Cluster.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `msg_vpn_name` (String) The name of the Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `topic_prefix` (String) A topic prefix for global topics available from the remote Home Cache Cluster. A wildcard (/&gt;) is implied at the end of the prefix.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
