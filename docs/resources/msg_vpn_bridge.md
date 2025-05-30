---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_msg_vpn_bridge Resource - solacebroker"
subcategory: ""
description: |-
  Bridges can be used to link two Message VPNs so that messages published to one Message VPN that match the topic subscriptions set for the bridge are also delivered to the linked Message VPN.
  The minimum access scope/level required to perform this operation is "vpn/read-only".
  This has been available since SEMP API version 2.0.
  The import identifier for this resource is {msg_vpn_name}/{bridge_name}/{bridge_virtual_router}, where {&lt;attribute&gt;} represents the value of the attribute and it must be URL-encoded.
---

# solacebroker_msg_vpn_bridge (Resource)

Bridges can be used to link two Message VPNs so that messages published to one Message VPN that match the topic subscriptions set for the bridge are also delivered to the linked Message VPN.



The minimum access scope/level required to perform this operation is "vpn/read-only".

This has been available since SEMP API version 2.0.

The import identifier for this resource is `{msg_vpn_name}/{bridge_name}/{bridge_virtual_router}`, where {&lt;attribute&gt;} represents the value of the attribute and it must be URL-encoded.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `bridge_name` (String) The name of the Bridge.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `bridge_virtual_router` (String) The virtual router of the Bridge.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The allowed values and their meaning are:

<pre>
"primary" - The Bridge is used for the primary virtual router.
"backup" - The Bridge is used for the backup virtual router.
"auto" - The Bridge is automatically assigned a virtual router at creation, depending on the broker's active-standby role.
</pre>
- `msg_vpn_name` (String) The name of the Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".

### Optional

- `enabled` (Boolean) Enable or disable the Bridge.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `max_ttl` (Number) The maximum time-to-live (TTL) in hops. Messages are discarded if their TTL exceeds this value.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Modifying this attribute while the object (or the relevant part of the object) is administratively enabled may be service impacting as enabled will be temporarily set to false to apply the change. Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `8`.
- `remote_authentication_basic_client_username` (String) The Client Username the Bridge uses to login to the remote Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Modifying this attribute while the object (or the relevant part of the object) is administratively enabled may be service impacting as enabled will be temporarily set to false to apply the change. Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `""`.
- `remote_authentication_basic_password` (String, Sensitive) The password for the Client Username.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". This attribute is absent from a GET and not updated when absent in a PUT, subject to the exceptions [here](https://docs.solace.com/Admin/SEMP/SEMP-API-Archit.htm#HTTP_Methods). Modifying this attribute while the object (or the relevant part of the object) is administratively enabled may be service impacting as enabled will be temporarily set to false to apply the change. Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `""`.
- `remote_authentication_client_cert_content` (String, Sensitive) The PEM formatted content for the client certificate used by the Bridge to login to the remote Message VPN. It must consist of a private key and between one and three certificates comprising the certificate trust chain.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". This attribute is absent from a GET and not updated when absent in a PUT, subject to the exceptions [here](https://docs.solace.com/Admin/SEMP/SEMP-API-Archit.htm#HTTP_Methods). Modifying this attribute while the object (or the relevant part of the object) is administratively enabled may be service impacting as enabled will be temporarily set to false to apply the change. The default value is `""`. Available since SEMP API version 2.9.
- `remote_authentication_client_cert_password` (String, Sensitive) The password for the client certificate.

The minimum access scope/level required to change this attribute is "vpn/read-write". This attribute is absent from a GET and not updated when absent in a PUT, subject to the exceptions [here](https://docs.solace.com/Admin/SEMP/SEMP-API-Archit.htm#HTTP_Methods). Modifying this attribute while the object (or the relevant part of the object) is administratively enabled may be service impacting as enabled will be temporarily set to false to apply the change. The default value is `""`. Available since SEMP API version 2.9.
- `remote_authentication_scheme` (String) The authentication scheme for the remote Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Modifying this attribute while the object (or the relevant part of the object) is administratively enabled may be service impacting as enabled will be temporarily set to false to apply the change. Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `"basic"`. The allowed values and their meaning are:

<pre>
"basic" - Basic Authentication Scheme (via username and password).
"client-certificate" - Client Certificate Authentication Scheme (via certificate file or content).
</pre>
- `remote_connection_retry_count` (Number) The number of retry attempts to establish a connection before moving on to the next remote Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `0`.
- `remote_connection_retry_delay` (Number) The number of seconds the broker waits for the bridge connection to be established before attempting a new connection.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `3`.
- `remote_deliver_to_one_priority` (String) The priority for deliver-to-one (DTO) messages transmitted from the remote Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Modifying this attribute while the object (or the relevant part of the object) is administratively enabled may be service impacting as enabled will be temporarily set to false to apply the change. Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `"p1"`. The allowed values and their meaning are:

<pre>
"p1" - The 1st or highest priority.
"p2" - The 2nd highest priority.
"p3" - The 3rd highest priority.
"p4" - The 4th highest priority.
"da" - Ignore priority and deliver always.
</pre>
- `tls_cipher_suite_list` (String) The colon-separated list of cipher suites supported for TLS connections to the remote Message VPN. The value "default" implies all supported suites ordered from most secure to least secure.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `"default"`.
