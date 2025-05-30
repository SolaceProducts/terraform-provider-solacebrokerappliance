---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_msg_vpn_jndi_connection_factory Data Source - solacebroker"
subcategory: ""
description: |-
  The message broker provides an internal JNDI store for provisioned Connection Factory objects that clients can access through JNDI lookups.
  The minimum access scope/level required to perform this operation is "vpn/read-only".
  This has been available since SEMP API version 2.4.
---

# solacebroker_msg_vpn_jndi_connection_factory (Data Source)

The message broker provides an internal JNDI store for provisioned Connection Factory objects that clients can access through JNDI lookups.



The minimum access scope/level required to perform this operation is "vpn/read-only".

This has been available since SEMP API version 2.4.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `connection_factory_name` (String) The name of the JMS Connection Factory.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `msg_vpn_name` (String) The name of the Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".

### Read-Only

- `allow_duplicate_client_id_enabled` (Boolean) Enable or disable whether new JMS connections can use the same Client identifier (ID) as an existing connection.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `client_description` (String) The description of the Client.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `""`.
- `client_id` (String) The Client identifier (ID). If not specified, a unique value for it will be generated.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `""`.
- `dto_receive_override_enabled` (Boolean) Enable or disable overriding by the Subscriber (Consumer) of the deliver-to-one (DTO) property on messages. When enabled, the Subscriber can receive all DTO tagged messages.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `true`.
- `dto_receive_subscriber_local_priority` (Number) The priority for receiving deliver-to-one (DTO) messages by the Subscriber (Consumer) if the messages are published on the local broker that the Subscriber is directly connected to.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `1`.
- `dto_receive_subscriber_network_priority` (Number) The priority for receiving deliver-to-one (DTO) messages by the Subscriber (Consumer) if the messages are published on a remote broker.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `1`.
- `dto_send_enabled` (Boolean) Enable or disable the deliver-to-one (DTO) property on messages sent by the Publisher (Producer).

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `dynamic_endpoint_create_durable_enabled` (Boolean) Enable or disable whether a durable endpoint will be dynamically created on the broker when the client calls "Session.createDurableSubscriber()" or "Session.createQueue()". The created endpoint respects the message time-to-live (TTL) according to the "dynamic_endpoint_respect_ttl_enabled" property.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `dynamic_endpoint_respect_ttl_enabled` (Boolean) Enable or disable whether dynamically created durable and non-durable endpoints respect the message time-to-live (TTL) property.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `true`.
- `guaranteed_receive_ack_timeout` (Number) The timeout for sending the acknowledgment (ACK) for guaranteed messages received by the Subscriber (Consumer), in milliseconds.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `1000`.
- `guaranteed_receive_reconnect_retry_count` (Number) The maximum number of attempts to reconnect to the host or list of hosts after the guaranteed  messaging connection has been lost. The value "-1" means to retry forever.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `-1`. Available since SEMP API version 2.14.
- `guaranteed_receive_reconnect_retry_wait` (Number) The amount of time to wait before making another attempt to connect or reconnect to the host after the guaranteed messaging connection has been lost, in milliseconds.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `3000`. Available since SEMP API version 2.14.
- `guaranteed_receive_window_size` (Number) The size of the window for guaranteed messages received by the Subscriber (Consumer), in messages.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `18`.
- `guaranteed_receive_window_size_ack_threshold` (Number) The threshold for sending the acknowledgment (ACK) for guaranteed messages received by the Subscriber (Consumer) as a percentage of `guaranteed_receive_window_size`.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `60`.
- `guaranteed_send_ack_timeout` (Number) The timeout for receiving the acknowledgment (ACK) for guaranteed messages sent by the Publisher (Producer), in milliseconds.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `2000`.
- `guaranteed_send_window_size` (Number) The size of the window for non-persistent guaranteed messages sent by the Publisher (Producer), in messages. For persistent messages the window size is fixed at 1.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `255`.
- `messaging_default_delivery_mode` (String) The default delivery mode for messages sent by the Publisher (Producer).

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `"persistent"`. The allowed values and their meaning are:

<pre>
"persistent" - The broker spools messages (persists in the Message Spool) as part of the send operation.
"non-persistent" - The broker does not spool messages (does not persist in the Message Spool) as part of the send operation.
</pre>
- `messaging_default_dmq_eligible_enabled` (Boolean) Enable or disable whether messages sent by the Publisher (Producer) are Dead Message Queue (DMQ) eligible by default.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `messaging_default_eliding_eligible_enabled` (Boolean) Enable or disable whether messages sent by the Publisher (Producer) are Eliding eligible by default.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `messaging_jmsx_user_id_enabled` (Boolean) Enable or disable inclusion (adding or replacing) of the JMSXUserID property in messages sent by the Publisher (Producer).

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `messaging_payload_compression_level` (Number) The level of compression to apply to the message payload, from 1 (least compression) to 9 (most compression). A value of 0 means no compression.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `0`. Available since SEMP API version 2.42.
- `messaging_text_in_xml_payload_enabled` (Boolean) Enable or disable encoding of JMS text messages in Publisher (Producer) messages as XML payload. When disabled, JMS text messages are encoded as a binary attachment.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `true`.
- `transport_compression_level` (Number) The ZLIB compression level for the connection to the broker. The value "0" means no compression, and the value "-1" means the compression level is specified in the JNDI Properties file.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `-1`.
- `transport_connect_retry_count` (Number) The maximum number of retry attempts to establish an initial connection to the host or list of hosts. The value "0" means a single attempt (no retries), and the value "-1" means to retry forever.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `0`.
- `transport_connect_retry_per_host_count` (Number) The maximum number of retry attempts to establish an initial connection to each host on the list of hosts. The value "0" means a single attempt (no retries), and the value "-1" means to retry forever.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `0`.
- `transport_connect_timeout` (Number) The timeout for establishing an initial connection to the broker, in milliseconds.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `30000`.
- `transport_direct_transport_enabled` (Boolean) Enable or disable usage of Direct Transport mode. When enabled, NON-PERSISTENT messages are sent as direct messages and non-durable topic consumers and temporary queue consumers consume using direct subscriptions rather than from guaranteed endpoints. If disabled all messaging uses guaranteed transport.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `true`.
- `transport_keepalive_count` (Number) The maximum number of consecutive application-level keepalive messages sent without the broker response before the connection to the broker is closed.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `3`.
- `transport_keepalive_enabled` (Boolean) Enable or disable usage of application-level keepalive messages to maintain a connection with the broker.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `true`.
- `transport_keepalive_interval` (Number) The interval between application-level keepalive messages, in milliseconds.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `3000`.
- `transport_msg_callback_on_io_thread_enabled` (Boolean) Enable or disable delivery of asynchronous messages directly from the I/O thread. Contact support before enabling this property.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `transport_optimize_direct_enabled` (Boolean) Enable or disable optimization for the Direct Transport delivery mode. If enabled, the client application is limited to one Publisher (Producer) and one non-durable Subscriber (Consumer).

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
- `transport_port` (Number) The connection port number on the broker for SMF clients. The value "-1" means the port is specified in the JNDI Properties file.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `-1`.
- `transport_read_timeout` (Number) The timeout for reading a reply from the broker, in milliseconds.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `10000`.
- `transport_receive_buffer_size` (Number) The size of the receive socket buffer, in bytes. It corresponds to the SO_RCVBUF socket option.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `65536`.
- `transport_reconnect_retry_count` (Number) The maximum number of attempts to reconnect to the host or list of hosts after the connection has been lost. The value "-1" means to retry forever.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `3`.
- `transport_reconnect_retry_wait` (Number) The amount of time before making another attempt to connect or reconnect to the host after the connection has been lost, in milliseconds.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `3000`.
- `transport_send_buffer_size` (Number) The size of the send socket buffer, in bytes. It corresponds to the SO_SNDBUF socket option.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `65536`.
- `transport_tcp_no_delay_enabled` (Boolean) Enable or disable the TCP_NODELAY option. When enabled, Nagle's algorithm for TCP/IP congestion control (RFC 896) is disabled.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `true`.
- `xa_enabled` (Boolean) Enable or disable this as an XA Connection Factory. When enabled, the Connection Factory can be cast to "XAConnectionFactory", "XAQueueConnectionFactory" or "XATopicConnectionFactory".

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The minimum access scope/level required to change this attribute is "vpn/read-write". Changes to this attribute are synchronized to HA mates and replication sites via config-sync. The default value is `false`.
