---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_msg_vpn_telemetry_profile_trace_filter_subscription Data Source - solacebroker"
subcategory: ""
description: |-
  Trace filter subscriptions control which messages will be attracted by the tracing filter.
  The minimum access scope/level required to perform this operation is "vpn/read-only".
  This has been available since SEMP API version 2.31.
---

# solacebroker_msg_vpn_telemetry_profile_trace_filter_subscription (Data Source)

Trace filter subscriptions control which messages will be attracted by the tracing filter.



The minimum access scope/level required to perform this operation is "vpn/read-only".

This has been available since SEMP API version 2.31.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `msg_vpn_name` (String) The name of the Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `subscription` (String) Messages matching this subscription will follow this filter's configuration.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `subscription_syntax` (String) The syntax of the trace filter subscription.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The allowed values and their meaning are:

<pre>
"smf" - Subscription uses SMF syntax.
"mqtt" - Subscription uses MQTT syntax.
</pre>
- `telemetry_profile_name` (String) The name of the Telemetry Profile.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `trace_filter_name` (String) A name used to identify the trace filter. Consider a name that describes the subscriptions contained within the filter, such as the name of the application and/or the scenario in which the trace filter might be enabled, such as "appNameDebug".

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
