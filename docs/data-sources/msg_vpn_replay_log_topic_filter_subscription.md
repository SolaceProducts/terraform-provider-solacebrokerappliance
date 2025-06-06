---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_msg_vpn_replay_log_topic_filter_subscription Data Source - solacebroker"
subcategory: ""
description: |-
  One or more Subscriptions can be added to a replay-log so that only guaranteed messages published to matching topics are stored in the Replay Log.
  The minimum access scope/level required to perform this operation is "vpn/read-only".
  This has been available since SEMP API version 2.27.
---

# solacebroker_msg_vpn_replay_log_topic_filter_subscription (Data Source)

One or more Subscriptions can be added to a replay-log so that only guaranteed messages published to matching topics are stored in the Replay Log.



The minimum access scope/level required to perform this operation is "vpn/read-only".

This has been available since SEMP API version 2.27.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `msg_vpn_name` (String) The name of the Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `replay_log_name` (String) The name of the Replay Log.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `topic_filter_subscription` (String) The topic of the Subscription.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
