terraform {
 required_providers {
   solacebroker = {
    source = "registry.terraform.io/solaceproducts/solacebrokerappliance"
   }
 }
}

provider "solacebroker" {
  username = "admin"
  password = "admin"
  url      = "http://localhost:8080"
  skip_api_check  = true
}

resource "solacebroker_msg_vpn" "msg_vpn" {
  msg_vpn_name                                                   = "test"
  alias                                                          = "test"
  authentication_basic_enabled                                   = false
  authentication_basic_profile_name                              = ""
  authentication_basic_radius_domain                             = "test"
  authentication_basic_type                                      = "internal"
  authentication_client_cert_allow_api_provided_username_enabled = true
  authentication_client_cert_certificate_matching_rules_enabled  = true
  authentication_client_cert_enabled                             = true
  authentication_client_cert_max_chain_depth                     = "4"
  authentication_client_cert_revocation_check_mode               = "allow-all"
  authentication_client_cert_username_source                     = "uid"
  authentication_client_cert_validate_date_enabled               = false
  authentication_kerberos_allow_api_provided_username_enabled    = true
  authentication_kerberos_enabled                                = true
  authentication_oauth_default_profile_name                      = "test"
  authentication_oauth_enabled                                   = true
  authorization_ldap_group_membership_attribute_name             = "test"
  authorization_ldap_trim_client_username_domain_enabled         = true
  authorization_profile_name                                     = "default"
  authorization_type                                             = "ldap"
  bridging_tls_server_cert_max_chain_depth                       = "4"
  bridging_tls_server_cert_validate_date_enabled                 = false
  bridging_tls_server_cert_validate_name_enabled                 = false
  dmr_enabled                                                    = true
  enabled                                                        = true
  event_connection_count_threshold                               = { "clear_percent" = 40, "set_percent" = 50 }
  event_egress_flow_count_threshold                              = { "clear_percent" = 40, "set_percent" = 50 }
  event_egress_msg_rate_threshold                                = { "clear_percent" = 40, "set_percent" = 50 }
  event_endpoint_count_threshold                                 = { "clear_percent" = 40, "set_percent" = 50 }
  event_ingress_flow_count_threshold                             = { "clear_percent" = 40, "set_percent" = 50 }
  event_ingress_msg_rate_threshold                               = { "clear_percent" = 40, "set_percent" = 50 }
  event_log_tag                                                  = "test"
  event_msg_spool_usage_threshold                                = { "clear_percent" = 40, "set_percent" = 50 }
  event_publish_client_enabled                                   = true
  event_publish_msg_vpn_enabled                                  = true
  event_publish_subscription_mode                                = "on-with-format-v2"
  event_publish_topic_format_mqtt_enabled                        = true
  event_publish_topic_format_smf_enabled                         = false
  event_service_amqp_connection_count_threshold                  = { "clear_percent" = 40, "set_percent" = 50 }
  event_service_mqtt_connection_count_threshold                  = { "clear_percent" = 40, "set_percent" = 50 }
  event_service_rest_incoming_connection_count_threshold         = { "clear_percent" = 40, "set_percent" = 50 }
  event_service_smf_connection_count_threshold                   = { "clear_percent" = 40, "set_percent" = 50 }
  event_service_web_connection_count_threshold                   = { "clear_percent" = 40, "set_percent" = 50 }
  event_subscription_count_threshold                             = { "clear_percent" = 40, "set_percent" = 50 }
  event_transacted_session_count_threshold                       = { "clear_percent" = 40, "set_percent" = 50 }
  event_transaction_count_threshold                              = { "clear_percent" = 40, "set_percent" = 50 }
  export_subscriptions_enabled                                   = true
  jndi_enabled                                                   = true
  max_connection_count                                           = 1234
  max_egress_flow_count                                          = 999
  max_endpoint_count                                             = 999
  max_ingress_flow_count                                         = 999
  max_msg_spool_usage                                            = 1
  max_subscription_count                                         = 999
  max_transacted_session_count                                   = 999
  max_transaction_count                                          = 999
  mqtt_retain_max_memory                                         = 999
  replication_ack_propagation_interval_msg_count                 = 21
  replication_bridge_authentication_basic_client_username        = "test"
  replication_bridge_authentication_basic_password               = "test"
  replication_bridge_authentication_client_cert_content          = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDc3jddBxAZ8uIf\nxerFpPmS67xYO0PEyMfP0syQ7AoZ0XJGyHvl/t4sOEZr1a0F5p0TVw5lzmkzBPk1\n+HjGZ7eGgSMtYHe2QhHNHdyLJOGbMd4rzjvyhtnjrlePI+ucn6puhtMOGyF9Cj8i\nmemy5HxF2iDO1ZRsgS4sA3SGfn8AxL5Tk4aB8j7vQhZwEtZWRR2gH0sVBAXEsmuU\ny6Xl+SaM6dhDrEl3KOBikxL+Y5ax/yJSp9m7ReWvzFOLd3PEkRkPqbf0hSIH/Roy\nkoVFN7aJu89bf8VOWV7cCuVQ+4AbpkHaJMsqb2wQ2rVSQ5GOZhjqBCGrobA+Evg8\n9ZdRHATnAgMBAAECggEAJR5bY5D6TcIZ6okSiaDOKLjhcFqVaw7rNawRoRFqKSif\n8fFjkSWiJQBYJWtFpsY5A7UPwGBOIbrmPwHBGmb32uz9AnVB6Sl1YGlyVRgfqjtZ\nQTdpr7qmB7OXF4FL6YiT1ftmoOpCWIdOUPxY4C2yDPM5rEkMpqeXIOJ7xNahdXlL\nLm+E0qxy2yt3khGhhKeObIiYpiln6z3VrRk5GA9U8aq0HP15IXBlxbfT9uzBZfbs\n4KlHCMOYEDE2+5r5R38kRCgMjkOuNAo38oMRIeEVlzbvq85WWFHs1kt/N8855zLt\nyDbnIn8SY6+fxeCGpecDef45Qb4xfAmRDLTLyJOFMQKBgQDuIPrW+YzGacBBLDWM\nzISw3jf9JsR4IWCD3zeSUAYjkHYwnBnyXfqZyGaMaQrE7GE16Wl20wVjEHeTJgdR\n+NZZ8ZpmHAHjfifSUjxn7t7M9Qo6VTp8W5LoaSs2HY4ylsSOK6RUPkXEIKAGvf7I\nf3VvdjJuWo0X04HPoC7u/rwMqwKBgQDtcZ2VfvoBYtIk6CpfAhRmhrPo2hJpyDB1\ny9MPmsYhCiB+/HcYsUt8zXUlCaOP1m/5tz58hSzTytvoB60Z+aXtG9I4XS3Wjhmd\nrEtuV0WiCA92vqKUVXWYnGy8L8pr6UXPgBezFvjHQKZzIoKByPCJckrEqCl8VUxh\nUcAvPVUwtQKBgHJxxTxWORMOtghcf+wISulaE1yGKjx2BhW6zNFzxk+HWVYpX8r8\n4bjQ+IAY58UWue2YHUivSFKBEobU6wW5awNVO1hBs6Kq+eZ6AXAN/GRSjDTWy0ID\nHMq36L2cXL/xd8vAK70VJKCK8X3sCCxCHaWRD9G7kT3XN/caTBQutx/7AoGAMB4j\nIiWOQnOlRGdsFr7UJYbMtLZknt07vNNmXTYvSojD1xgQhod/VbZJNA1FASQiowdY\neWF/mRf2AopzsNzfnDJUIqn3XRCE7mf5DU5QRSq+/4BYcBj1cMzaWDSTH9UxGYDK\nzLcuCSr30ENBEU4IOMJZlorBhXm/tcUcXjZeqjUCgYEAwpOFx8KHazph2ial9954\ndq0IZZrhrLPoaLQVwLnUITpvKw1ORxdzLH8VNvRTcPF6XRt7BcV8aRcENW7R0Ozd\nQa4T12AxqCFp2tdD7juOMJoFVwr5Cq5DyN935QP7PiGhqBRJYkXvBMCezFD7XloC\njjroojuJIsIhfhgvoKj37oE=\n-----END PRIVATE KEY-----\n-----BEGIN CERTIFICATE-----\nMIIIAjCCBuqgAwIBAgIJALYF/Umvsgf3MA0GCSqGSIb3DQEBCwUAME8xCzAJBgNV\nBAYTAkNBMRAwDgYDVQQIDAdPbnRhcmlvMQ8wDQYDVQQHDAZPdHRhd2ExDzANBgNV\nBAoMBlNvbGFjZTEMMAoGA1UEAwwDYWZ3MCAXDTIzMDMwNzE3MDExMloYDzIxMjMw\nMjExMTcwMTEyWjB1MQswCQYDVQQGEwJDQTEQMA4GA1UECAwHT250YXJpbzEPMA0G\nA1UEBwwGT3R0YXdhMQ8wDQYDVQQKDAZTb2xhY2UxDDAKBgNVBAMMA2FmdzEkMCIG\nCSqGSIb3DQEJARYVdm1yLTEzMi05NkBzb2xhY2UuY29tMIIBIjANBgkqhkiG9w0B\nAQEFAAOCAQ8AMIIBCgKCAQEA3N43XQcQGfLiH8XqxaT5kuu8WDtDxMjHz9LMkOwK\nGdFyRsh75f7eLDhGa9WtBeadE1cOZc5pMwT5Nfh4xme3hoEjLWB3tkIRzR3ciyTh\nmzHeK8478obZ465XjyPrnJ+qbobTDhshfQo/IpnpsuR8RdogztWUbIEuLAN0hn5/\nAMS+U5OGgfI+70IWcBLWVkUdoB9LFQQFxLJrlMul5fkmjOnYQ6xJdyjgYpMS/mOW\nsf8iUqfZu0Xlr8xTi3dzxJEZD6m39IUiB/0aMpKFRTe2ibvPW3/FTlle3ArlUPuA\nG6ZB2iTLKm9sENq1UkORjmYY6gQhq6GwPhL4PPWXURwE5wIDAQABo4IEtzCCBLMw\nCQYDVR0TBAIwADALBgNVHQ8EBAMCBeAwggSXBgNVHREEggSOMIIEiocEwKiEYIcQ\n/YAAAAAAASgBkgFoATIAloIEZTk2bYIJZTk2bS5pcHY0ggllOTZtLmlwdjaCgf1l\nOTZtLmNvbS5zb2xhY2UtdGVzdC52bXItbXVsdGktY2xvdWQuQWFhYWFhYWFhYS5C\nYmJiYmJiYmJiLkNjY2NjY2NjY2MuRGRkZGRkZGRkZC5FZWVlZWVlZWVlLkZmZmZm\nZmZmZmYuR2dnZ2dnZ2dnZy5IaGhoaGhoaGhoLklpaWlpaWlpaWkuSmpqampqampq\nai5La2tra2tra2trLkxsbGxsbGxsbGwuTW1tbW1tbW1tbS5Obm5ubm5ubm5uLk9v\nb29vb29vb28uUHBwcHBwcHBwcC5RcXFxcXFxcXFxLlJycnJycnJycnIuU3Nzc3Nz\nc3Nzcy5UdHR0dHR0goH9ZTk2bS5jb20uc29sYWNlLXRlc3Qudm1yLW11bHRpLWNs\nb3VkLkFhYWFhYWFhYWEuQmJiYmJiYmJiYi5DY2NjY2NjY2NjLkRkZGRkZGRkZGQu\nRWVlZWVlZWVlZS5GZmZmZmZmZmZmLkdnZ2dnZ2dnZ2cuSGhoaGhoaGhoaC5JaWlp\naWlpaWlpLkpqampqampqamouS2tra2tra2tray5MbGxsbGxsbGxsLk1tbW1tbW1t\nbW0uTm5ubm5ubm5ubi5Pb29vb29vb29vLlBwcHBwcHBwcHAuUXFxcXFxcXFxcS5S\ncnJycnJycnJyLlNzc3Nzc3Nzc3MuVHR0dHR0dIIMZTk2bS5zb2x0ZXN0ghFlOTZt\nLmlwdjQuc29sdGVzdIIRZTk2bS5pcHY2LnNvbHRlc3SCgf1lOTZtLmNvbS5zb2xh\nY2UtdGVzdC52bXItbXVsdGktY2xvdWQuQWFhYWFhYWFhYS5CYmJiYmJiYmJiLkNj\nY2NjY2NjY2MuRGRkZGRkZGRkZC5FZWVlZWVlZWVlLkZmZmZmZmZmZmYuR2dnZ2dn\nZ2dnZy5IaGhoaGhoaGhoLklpaWlpaWlpaWkuSmpqampqampqai5La2tra2tra2tr\nLkxsbGxsbGxsbGwuTW1tbW1tbW1tbS5Obm5ubm5ubm5uLk9vb29vb29vb28uUHBw\ncHBwcHBwcC5RcXFxcXFxcXFxLlJycnJycnJycnIuU3Nzc3Nzc3Nzcy5zb2x0ZXN0\ngoH9ZTk2bS5jb20uc29sYWNlLXRlc3Qudm1yLW11bHRpLWNsb3VkLkFhYWFhYWFh\nYWEuQmJiYmJiYmJiYi5DY2NjY2NjY2NjLkRkZGRkZGRkZGQuRWVlZWVlZWVlZS5G\nZmZmZmZmZmZmLkdnZ2dnZ2dnZ2cuSGhoaGhoaGhoaC5JaWlpaWlpaWlpLkpqampq\nampqamouS2tra2tra2tray5MbGxsbGxsbGxsLk1tbW1tbW1tbW0uTm5ubm5ubm5u\nbi5Pb29vb29vb29vLlBwcHBwcHBwcHAuUXFxcXFxcXFxcS5ScnJycnJycnJyLlNz\nc3Nzc3Nzc3Muc29sdGVzdIIKdm1yLTEzMi05NoIUdm1yLTEzMi05Ni5zb2wtbG9j\nYWwwDQYJKoZIhvcNAQELBQADggEBALw9t+131ytbltmPk8LKmYNo/tWWsJgwcxGu\npzconod45Ibia2Sep1yNll2Oqx1/Te6vk93WmHnP2F01N/o9mWZSMbsw2mxWi+EJ\nd5TSvr14Elb7/6bsc8b82SF3UIFVlBe2ng3M6a0r/g3UG2Nq7O4EoRwt8msIUfI+\nW2k1YOOplaejxKwbIOxBe4qpagdwtwOWvmjM//IrRCI+GiXZ7UfO5nG0Dzy85lX2\n80mOjL5WX1c9QalW/c4tU/W2gBXt+/GlZ9M0WFSmiBfexSp75G8/tVCfbwV+XUBw\nX8aEQnKCo/w72bD2C52Di/OnxteRT+NFdNMafngPpPTHk9hnRgU=\n-----END CERTIFICATE-----"
  replication_bridge_authentication_client_cert_password         = "test"
  replication_bridge_authentication_scheme                       = "client-certificate"
  replication_bridge_compressed_data_enabled                     = true
  replication_bridge_egress_flow_window_size                     = 254
  replication_bridge_retry_delay                                 = 2
  replication_bridge_tls_enabled                                 = true
  replication_bridge_unidirectional_client_profile_name          = "default"
  replication_enabled                                            = false
  replication_queue_max_msg_spool_usage                          = "5999"
  replication_queue_reject_msg_to_sender_on_discard_enabled      = false
  replication_reject_msg_when_sync_ineligible_enabled            = true
  replication_role                                               = "active"
  replication_transaction_mode                                   = "sync"
  rest_tls_server_cert_max_chain_depth                           = "4"
  rest_tls_server_cert_validate_date_enabled                     = false
  rest_tls_server_cert_validate_name_enabled                     = false
  semp_over_msg_bus_admin_client_enabled                         = true
  semp_over_msg_bus_admin_distributed_cache_enabled              = true
  semp_over_msg_bus_admin_enabled                                = true
  semp_over_msg_bus_enabled                                      = false
  semp_over_msg_bus_show_enabled                                 = true
  service_amqp_max_connection_count                              = 100
  service_amqp_plain_text_enabled                                = true
  service_amqp_plain_text_listen_port                            = 4567
  service_amqp_tls_enabled                                       = true
  service_amqp_tls_listen_port                                   = 7654
  service_mqtt_authentication_client_cert_request                = "always"
  service_mqtt_max_connection_count                              = "102"
  service_mqtt_plain_text_enabled                                = true
  service_mqtt_plain_text_listen_port                            = 9876
  service_mqtt_tls_enabled                                       = true
  service_mqtt_tls_listen_port                                   = 1573
  service_mqtt_tls_web_socket_enabled                            = true
  service_mqtt_tls_web_socket_listen_port                        = 6294
  service_mqtt_web_socket_enabled                                = true
  service_mqtt_web_socket_listen_port                            = 8234
  service_rest_incoming_authentication_client_cert_request       = "never"
  service_rest_incoming_authorization_header_handling            = "forward"
  service_rest_incoming_max_connection_count                     = 101
  service_rest_incoming_plain_text_enabled                       = true
  service_rest_incoming_plain_text_listen_port                   = 4571
  service_rest_incoming_tls_enabled                              = true
  service_rest_incoming_tls_listen_port                          = 8392
  service_rest_mode                                              = "gateway"
  service_rest_outgoing_max_connection_count                     = 202
  service_smf_max_connection_count                               = 303
  service_smf_plain_text_enabled                                 = false
  service_smf_tls_enabled                                        = false
  service_web_authentication_client_cert_request                 = "always"
  service_web_max_connection_count                               = 404
  service_web_plain_text_enabled                                 = false
  service_web_tls_enabled                                        = false
  tls_allow_downgrade_to_plain_text_enabled                      = true
}

resource "solacebroker_msg_vpn_acl_profile" "msg_vpn_acl_profile" {
  msg_vpn_name                        = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  acl_profile_name                    = "test"
  client_connect_default_action       = "allow"
  publish_topic_default_action        = "allow"
  subscribe_share_name_default_action = "disallow"
  subscribe_topic_default_action      = "allow"
}

resource "solacebroker_msg_vpn_acl_profile_client_connect_exception" "msg_vpn_acl_profile_client_connect_exception" {
  msg_vpn_name                     = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  acl_profile_name                 = solacebroker_msg_vpn_acl_profile.msg_vpn_acl_profile.acl_profile_name
  client_connect_exception_address = "192.168.1.1/24"
}

resource "solacebroker_msg_vpn_acl_profile_publish_topic_exception" "msg_vpn_acl_profile_publish_topic_exception" {
  msg_vpn_name                   = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  acl_profile_name               = solacebroker_msg_vpn_acl_profile.msg_vpn_acl_profile.acl_profile_name
  publish_topic_exception        = "test1"
  publish_topic_exception_syntax = "smf"
}

resource "solacebroker_msg_vpn_acl_profile_subscribe_share_name_exception" "msg_vpn_acl_profile_subscribe_share_name_exception" {
  msg_vpn_name                          = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  acl_profile_name                      = solacebroker_msg_vpn_acl_profile.msg_vpn_acl_profile.acl_profile_name
  subscribe_share_name_exception        = "test3"
  subscribe_share_name_exception_syntax = "mqtt"
}

resource "solacebroker_msg_vpn_acl_profile_subscribe_topic_exception" "msg_vpn_acl_profile_subscribe_topic_exception" {
  msg_vpn_name                     = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  acl_profile_name                 = solacebroker_msg_vpn_acl_profile.msg_vpn_acl_profile.acl_profile_name
  subscribe_topic_exception        = "test4"
  subscribe_topic_exception_syntax = "smf"
}

resource "solacebroker_msg_vpn_authentication_oauth_profile" "msg_vpn_authentication_oauth_profile" {
  msg_vpn_name                               = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  oauth_profile_name                         = "test"
  authorization_groups_claim_name            = "test"
  authorization_groups_claim_string_format   = "space-delimited"
  client_id                                  = "test"
  client_required_type                       = "test"
  client_secret                              = "test"
  client_validate_type_enabled               = false
  disconnect_on_token_expiration_enabled     = false
  enabled                                    = true
  endpoint_discovery                         = "https://dfsaf:3242"
  endpoint_discovery_refresh_interval        = 86399
  endpoint_introspection                     = "https://qsdfsd:4231"
  endpoint_introspection_timeout             = 2
  endpoint_jwks                              = "https://esafs:4225"
  endpoint_jwks_refresh_interval             = 86399
  endpoint_userinfo                          = "https://dsgfh:3261"
  endpoint_userinfo_timeout                  = 2
  issuer                                     = "test"
  mqtt_username_validate_enabled             = true
  oauth_role                                 = "resource-server"
  resource_server_parse_access_token_enabled = false
  resource_server_required_audience          = "test"
  resource_server_required_issuer            = "test"
  resource_server_required_scope             = "test"
  resource_server_required_type              = "test"
  resource_server_validate_audience_enabled  = false
  resource_server_validate_issuer_enabled    = false
  resource_server_validate_scope_enabled     = false
  resource_server_validate_type_enabled      = false
  username_claim_name                        = "test"
}

resource "solacebroker_msg_vpn_authentication_oauth_profile_client_required_claim" "msg_vpn_authentication_oauth_profile_client_required_claim" {
  msg_vpn_name                = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  oauth_profile_name          = solacebroker_msg_vpn_authentication_oauth_profile.msg_vpn_authentication_oauth_profile.oauth_profile_name
  client_required_claim_name  = "test"
  client_required_claim_value = "{\"test\":1}"
}

resource "solacebroker_msg_vpn_authentication_oauth_profile_resource_server_required_claim" "msg_vpn_authentication_oauth_profile_resource_server_required_claim" {
  msg_vpn_name                         = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  oauth_profile_name                   = solacebroker_msg_vpn_authentication_oauth_profile.msg_vpn_authentication_oauth_profile.oauth_profile_name
  resource_server_required_claim_name  = "test"
  resource_server_required_claim_value = "{\"test\":1}"
}

resource "solacebroker_msg_vpn_authorization_group" "msg_vpn_authorization_group" {
  msg_vpn_name                         = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  authorization_group_name             = "test"
  acl_profile_name                     = "default"
  client_profile_name                  = "default"
  enabled                              = true
  order_after_authorization_group_name = "test"
}

resource "solacebroker_msg_vpn_bridge" "msg_vpn_bridge" {
  msg_vpn_name                                = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  bridge_name                                 = "test"
  bridge_virtual_router                       = "auto"
  enabled                                     = true
  max_ttl                                     = 11
  remote_authentication_basic_client_username = "test"
  remote_authentication_basic_password        = "test"
  remote_authentication_client_cert_content   = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDc3jddBxAZ8uIf\nxerFpPmS67xYO0PEyMfP0syQ7AoZ0XJGyHvl/t4sOEZr1a0F5p0TVw5lzmkzBPk1\n+HjGZ7eGgSMtYHe2QhHNHdyLJOGbMd4rzjvyhtnjrlePI+ucn6puhtMOGyF9Cj8i\nmemy5HxF2iDO1ZRsgS4sA3SGfn8AxL5Tk4aB8j7vQhZwEtZWRR2gH0sVBAXEsmuU\ny6Xl+SaM6dhDrEl3KOBikxL+Y5ax/yJSp9m7ReWvzFOLd3PEkRkPqbf0hSIH/Roy\nkoVFN7aJu89bf8VOWV7cCuVQ+4AbpkHaJMsqb2wQ2rVSQ5GOZhjqBCGrobA+Evg8\n9ZdRHATnAgMBAAECggEAJR5bY5D6TcIZ6okSiaDOKLjhcFqVaw7rNawRoRFqKSif\n8fFjkSWiJQBYJWtFpsY5A7UPwGBOIbrmPwHBGmb32uz9AnVB6Sl1YGlyVRgfqjtZ\nQTdpr7qmB7OXF4FL6YiT1ftmoOpCWIdOUPxY4C2yDPM5rEkMpqeXIOJ7xNahdXlL\nLm+E0qxy2yt3khGhhKeObIiYpiln6z3VrRk5GA9U8aq0HP15IXBlxbfT9uzBZfbs\n4KlHCMOYEDE2+5r5R38kRCgMjkOuNAo38oMRIeEVlzbvq85WWFHs1kt/N8855zLt\nyDbnIn8SY6+fxeCGpecDef45Qb4xfAmRDLTLyJOFMQKBgQDuIPrW+YzGacBBLDWM\nzISw3jf9JsR4IWCD3zeSUAYjkHYwnBnyXfqZyGaMaQrE7GE16Wl20wVjEHeTJgdR\n+NZZ8ZpmHAHjfifSUjxn7t7M9Qo6VTp8W5LoaSs2HY4ylsSOK6RUPkXEIKAGvf7I\nf3VvdjJuWo0X04HPoC7u/rwMqwKBgQDtcZ2VfvoBYtIk6CpfAhRmhrPo2hJpyDB1\ny9MPmsYhCiB+/HcYsUt8zXUlCaOP1m/5tz58hSzTytvoB60Z+aXtG9I4XS3Wjhmd\nrEtuV0WiCA92vqKUVXWYnGy8L8pr6UXPgBezFvjHQKZzIoKByPCJckrEqCl8VUxh\nUcAvPVUwtQKBgHJxxTxWORMOtghcf+wISulaE1yGKjx2BhW6zNFzxk+HWVYpX8r8\n4bjQ+IAY58UWue2YHUivSFKBEobU6wW5awNVO1hBs6Kq+eZ6AXAN/GRSjDTWy0ID\nHMq36L2cXL/xd8vAK70VJKCK8X3sCCxCHaWRD9G7kT3XN/caTBQutx/7AoGAMB4j\nIiWOQnOlRGdsFr7UJYbMtLZknt07vNNmXTYvSojD1xgQhod/VbZJNA1FASQiowdY\neWF/mRf2AopzsNzfnDJUIqn3XRCE7mf5DU5QRSq+/4BYcBj1cMzaWDSTH9UxGYDK\nzLcuCSr30ENBEU4IOMJZlorBhXm/tcUcXjZeqjUCgYEAwpOFx8KHazph2ial9954\ndq0IZZrhrLPoaLQVwLnUITpvKw1ORxdzLH8VNvRTcPF6XRt7BcV8aRcENW7R0Ozd\nQa4T12AxqCFp2tdD7juOMJoFVwr5Cq5DyN935QP7PiGhqBRJYkXvBMCezFD7XloC\njjroojuJIsIhfhgvoKj37oE=\n-----END PRIVATE KEY-----\n-----BEGIN CERTIFICATE-----\nMIIIAjCCBuqgAwIBAgIJALYF/Umvsgf3MA0GCSqGSIb3DQEBCwUAME8xCzAJBgNV\nBAYTAkNBMRAwDgYDVQQIDAdPbnRhcmlvMQ8wDQYDVQQHDAZPdHRhd2ExDzANBgNV\nBAoMBlNvbGFjZTEMMAoGA1UEAwwDYWZ3MCAXDTIzMDMwNzE3MDExMloYDzIxMjMw\nMjExMTcwMTEyWjB1MQswCQYDVQQGEwJDQTEQMA4GA1UECAwHT250YXJpbzEPMA0G\nA1UEBwwGT3R0YXdhMQ8wDQYDVQQKDAZTb2xhY2UxDDAKBgNVBAMMA2FmdzEkMCIG\nCSqGSIb3DQEJARYVdm1yLTEzMi05NkBzb2xhY2UuY29tMIIBIjANBgkqhkiG9w0B\nAQEFAAOCAQ8AMIIBCgKCAQEA3N43XQcQGfLiH8XqxaT5kuu8WDtDxMjHz9LMkOwK\nGdFyRsh75f7eLDhGa9WtBeadE1cOZc5pMwT5Nfh4xme3hoEjLWB3tkIRzR3ciyTh\nmzHeK8478obZ465XjyPrnJ+qbobTDhshfQo/IpnpsuR8RdogztWUbIEuLAN0hn5/\nAMS+U5OGgfI+70IWcBLWVkUdoB9LFQQFxLJrlMul5fkmjOnYQ6xJdyjgYpMS/mOW\nsf8iUqfZu0Xlr8xTi3dzxJEZD6m39IUiB/0aMpKFRTe2ibvPW3/FTlle3ArlUPuA\nG6ZB2iTLKm9sENq1UkORjmYY6gQhq6GwPhL4PPWXURwE5wIDAQABo4IEtzCCBLMw\nCQYDVR0TBAIwADALBgNVHQ8EBAMCBeAwggSXBgNVHREEggSOMIIEiocEwKiEYIcQ\n/YAAAAAAASgBkgFoATIAloIEZTk2bYIJZTk2bS5pcHY0ggllOTZtLmlwdjaCgf1l\nOTZtLmNvbS5zb2xhY2UtdGVzdC52bXItbXVsdGktY2xvdWQuQWFhYWFhYWFhYS5C\nYmJiYmJiYmJiLkNjY2NjY2NjY2MuRGRkZGRkZGRkZC5FZWVlZWVlZWVlLkZmZmZm\nZmZmZmYuR2dnZ2dnZ2dnZy5IaGhoaGhoaGhoLklpaWlpaWlpaWkuSmpqampqampq\nai5La2tra2tra2trLkxsbGxsbGxsbGwuTW1tbW1tbW1tbS5Obm5ubm5ubm5uLk9v\nb29vb29vb28uUHBwcHBwcHBwcC5RcXFxcXFxcXFxLlJycnJycnJycnIuU3Nzc3Nz\nc3Nzcy5UdHR0dHR0goH9ZTk2bS5jb20uc29sYWNlLXRlc3Qudm1yLW11bHRpLWNs\nb3VkLkFhYWFhYWFhYWEuQmJiYmJiYmJiYi5DY2NjY2NjY2NjLkRkZGRkZGRkZGQu\nRWVlZWVlZWVlZS5GZmZmZmZmZmZmLkdnZ2dnZ2dnZ2cuSGhoaGhoaGhoaC5JaWlp\naWlpaWlpLkpqampqampqamouS2tra2tra2tray5MbGxsbGxsbGxsLk1tbW1tbW1t\nbW0uTm5ubm5ubm5ubi5Pb29vb29vb29vLlBwcHBwcHBwcHAuUXFxcXFxcXFxcS5S\ncnJycnJycnJyLlNzc3Nzc3Nzc3MuVHR0dHR0dIIMZTk2bS5zb2x0ZXN0ghFlOTZt\nLmlwdjQuc29sdGVzdIIRZTk2bS5pcHY2LnNvbHRlc3SCgf1lOTZtLmNvbS5zb2xh\nY2UtdGVzdC52bXItbXVsdGktY2xvdWQuQWFhYWFhYWFhYS5CYmJiYmJiYmJiLkNj\nY2NjY2NjY2MuRGRkZGRkZGRkZC5FZWVlZWVlZWVlLkZmZmZmZmZmZmYuR2dnZ2dn\nZ2dnZy5IaGhoaGhoaGhoLklpaWlpaWlpaWkuSmpqampqampqai5La2tra2tra2tr\nLkxsbGxsbGxsbGwuTW1tbW1tbW1tbS5Obm5ubm5ubm5uLk9vb29vb29vb28uUHBw\ncHBwcHBwcC5RcXFxcXFxcXFxLlJycnJycnJycnIuU3Nzc3Nzc3Nzcy5zb2x0ZXN0\ngoH9ZTk2bS5jb20uc29sYWNlLXRlc3Qudm1yLW11bHRpLWNsb3VkLkFhYWFhYWFh\nYWEuQmJiYmJiYmJiYi5DY2NjY2NjY2NjLkRkZGRkZGRkZGQuRWVlZWVlZWVlZS5G\nZmZmZmZmZmZmLkdnZ2dnZ2dnZ2cuSGhoaGhoaGhoaC5JaWlpaWlpaWlpLkpqampq\nampqamouS2tra2tra2tray5MbGxsbGxsbGxsLk1tbW1tbW1tbW0uTm5ubm5ubm5u\nbi5Pb29vb29vb29vLlBwcHBwcHBwcHAuUXFxcXFxcXFxcS5ScnJycnJycnJyLlNz\nc3Nzc3Nzc3Muc29sdGVzdIIKdm1yLTEzMi05NoIUdm1yLTEzMi05Ni5zb2wtbG9j\nYWwwDQYJKoZIhvcNAQELBQADggEBALw9t+131ytbltmPk8LKmYNo/tWWsJgwcxGu\npzconod45Ibia2Sep1yNll2Oqx1/Te6vk93WmHnP2F01N/o9mWZSMbsw2mxWi+EJ\nd5TSvr14Elb7/6bsc8b82SF3UIFVlBe2ng3M6a0r/g3UG2Nq7O4EoRwt8msIUfI+\nW2k1YOOplaejxKwbIOxBe4qpagdwtwOWvmjM//IrRCI+GiXZ7UfO5nG0Dzy85lX2\n80mOjL5WX1c9QalW/c4tU/W2gBXt+/GlZ9M0WFSmiBfexSp75G8/tVCfbwV+XUBw\nX8aEQnKCo/w72bD2C52Di/OnxteRT+NFdNMafngPpPTHk9hnRgU=\n-----END CERTIFICATE-----"
  remote_authentication_client_cert_password  = "test"
  remote_authentication_scheme                = "client-certificate"
  remote_connection_retry_count               = 1
  remote_connection_retry_delay               = 2
  remote_deliver_to_one_priority              = "p2"
  tls_cipher_suite_list                       = "default"
}

resource "solacebroker_msg_vpn_bridge_remote_msg_vpn" "msg_vpn_bridge_remote_msg_vpn" {
  msg_vpn_name                  = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  bridge_name                   = solacebroker_msg_vpn_bridge.msg_vpn_bridge.bridge_name
  bridge_virtual_router         = solacebroker_msg_vpn_bridge.msg_vpn_bridge.bridge_virtual_router
  remote_msg_vpn_interface      = ""
  remote_msg_vpn_location       = "192.168.1.1:1234"
  remote_msg_vpn_name           = "default"
  client_username               = "test"
  compressed_data_enabled       = true
  connect_order                 = 3
  egress_flow_window_size       = 254
  enabled                       = true
  password                      = "test"
  queue_binding                 = "test"
  tls_enabled                   = true
  unidirectional_client_profile = "default"
}

resource "solacebroker_msg_vpn_bridge_remote_subscription" "msg_vpn_bridge_remote_subscription" {
  msg_vpn_name              = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  bridge_name               = solacebroker_msg_vpn_bridge.msg_vpn_bridge.bridge_name
  bridge_virtual_router     = solacebroker_msg_vpn_bridge.msg_vpn_bridge.bridge_virtual_router
  remote_subscription_topic = "test"
  deliver_always_enabled    = true
}

# resource "solacebroker_msg_vpn_bridge_tls_trusted_common_name" "msg_vpn_bridge_tls_trusted_common_name" {
#   msg_vpn_name            = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
#   bridge_name             = solacebroker_msg_vpn_bridge.msg_vpn_bridge.bridge_name
#   bridge_virtual_router   = solacebroker_msg_vpn_bridge.msg_vpn_bridge.bridge_virtual_router
#   tls_trusted_common_name = "test"
# }

resource "solacebroker_msg_vpn_cert_matching_rule" "msg_vpn_cert_matching_rule" {
  msg_vpn_name = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rule_name    = "test"
  enabled      = true
}

resource "solacebroker_msg_vpn_cert_matching_rule_attribute_filter" "msg_vpn_cert_matching_rule_attribute_filter" {
  msg_vpn_name    = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rule_name       = solacebroker_msg_vpn_cert_matching_rule.msg_vpn_cert_matching_rule.rule_name
  filter_name     = "test"
  attribute_name  = "test"
  attribute_value = "test"
}

resource "solacebroker_msg_vpn_cert_matching_rule_condition" "msg_vpn_cert_matching_rule_condition" {
  msg_vpn_name = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rule_name    = solacebroker_msg_vpn_cert_matching_rule.msg_vpn_cert_matching_rule.rule_name
  source       = "uid"
  expression   = "test"
}

resource "solacebroker_msg_vpn_client_profile" "msg_vpn_client_profile" {
  msg_vpn_name                                                     = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  client_profile_name                                              = "test"
  allow_bridge_connections_enabled                                 = true
  allow_guaranteed_endpoint_create_durability                      = "durable"
  allow_guaranteed_endpoint_create_enabled                         = true
  allow_guaranteed_msg_receive_enabled                             = true
  allow_guaranteed_msg_send_enabled                                = true
  allow_shared_subscriptions_enabled                               = true
  allow_transacted_sessions_enabled                                = true
  api_queue_management_copy_from_on_create_template_name           = "test"
  api_topic_endpoint_management_copy_from_on_create_template_name  = "test"
  compression_enabled                                              = true
  eliding_delay                                                    = 1
  eliding_enabled                                                  = true
  eliding_max_topic_count                                          = 255
  event_client_provisioned_endpoint_spool_usage_threshold          = { "clear_percent" = 40, "set_percent" = 50 }
  event_connection_count_per_client_username_threshold             = { "clear_percent" = 40, "set_percent" = 50 }
  event_egress_flow_count_threshold                                = { "clear_percent" = 40, "set_percent" = 50 }
  event_endpoint_count_per_client_username_threshold               = { "clear_percent" = 40, "set_percent" = 50 }
  event_ingress_flow_count_threshold                               = { "clear_percent" = 40, "set_percent" = 50 }
  event_service_smf_connection_count_per_client_username_threshold = { "clear_percent" = 40, "set_percent" = 50 }
  event_service_web_connection_count_per_client_username_threshold = { "clear_percent" = 40, "set_percent" = 50 }
  event_subscription_count_threshold                               = { "clear_percent" = 40, "set_percent" = 50 }
  event_transacted_session_count_threshold                         = { "clear_percent" = 40, "set_percent" = 50 }
  event_transaction_count_threshold                                = { "clear_percent" = 40, "set_percent" = 50 }
  max_connection_count_per_client_username                         = 999
  max_egress_flow_count                                            = 999
  max_endpoint_count_per_client_username                           = 999
  max_ingress_flow_count                                           = 999
  max_msgs_per_transaction                                         = 5
  max_subscription_count                                           = 99
  max_transacted_session_count                                     = 9
  max_transaction_count                                            = 9
  queue_control1_max_depth                                         = 999
  queue_control1_min_msg_burst                                     = 3
  queue_direct1_max_depth                                          = 999
  queue_direct1_min_msg_burst                                      = 3
  queue_direct2_max_depth                                          = 999
  queue_direct2_min_msg_burst                                      = 3
  queue_direct3_max_depth                                          = 999
  queue_direct3_min_msg_burst                                      = 3
  queue_guaranteed1_max_depth                                      = 999
  queue_guaranteed1_min_msg_burst                                  = 254
  reject_msg_to_sender_on_no_subscription_match_enabled            = true
  replication_allow_client_connect_when_standby_enabled            = true
  service_min_keepalive_timeout                                    = 29
  service_smf_max_connection_count_per_client_username             = 99
  service_smf_min_keepalive_enabled                                = true
  service_web_inactive_timeout                                     = 9
  service_web_max_connection_count_per_client_username             = 99
  service_web_max_payload                                          = 99999
  tcp_congestion_window_size                                       = 3
  tcp_keepalive_count                                              = 2
  tcp_keepalive_idle_time                                          = 3
  tcp_keepalive_interval                                           = 2
  tcp_max_segment_size                                             = 1459
  tcp_max_window_size                                              = 255
  tls_allow_downgrade_to_plain_text_enabled                        = false
}

resource "solacebroker_msg_vpn_client_username" "msg_vpn_client_username" {
  msg_vpn_name                                    = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  client_username                                 = "test"
  acl_profile_name                                = solacebroker_msg_vpn_acl_profile.msg_vpn_acl_profile.acl_profile_name
  client_profile_name                             = solacebroker_msg_vpn_client_profile.msg_vpn_client_profile.client_profile_name
  enabled                                         = true
  guaranteed_endpoint_permission_override_enabled = true
  password                                        = "test"
  subscription_manager_enabled                    = true
}

resource "solacebroker_msg_vpn_client_username_attribute" "msg_vpn_client_username_attribute" {
  msg_vpn_name    = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  client_username = solacebroker_msg_vpn_client_username.msg_vpn_client_username.client_username
  attribute_name  = "test"
  attribute_value = "test"
}

resource "solacebroker_msg_vpn_distributed_cache" "msg_vpn_distributed_cache" {
  msg_vpn_name                   = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  cache_name                     = "test"
  cache_virtual_router           = "auto"
  enabled                        = true
  heartbeat                      = 11
  scheduled_delete_msg_day_list  = "Thu,Fri"
  scheduled_delete_msg_time_list = "3:59,4:59,13:59,23:59"
}

resource "solacebroker_msg_vpn_distributed_cache_cluster" "msg_vpn_distributed_cache_cluster" {
  msg_vpn_name                        = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  cache_name                          = solacebroker_msg_vpn_distributed_cache.msg_vpn_distributed_cache.cache_name
  cluster_name                        = "test1"
  deliver_to_one_override_enabled     = false
  enabled                             = true
  event_data_byte_rate_threshold      = { "clear_percent" = 40, "set_percent" = 50 }
  event_data_msg_rate_threshold       = { "clear_percent" = 40, "set_percent" = 50 }
  event_max_memory_threshold          = { "clear_percent" = 40, "set_percent" = 50 }
  event_max_topics_threshold          = { "clear_percent" = 40, "set_percent" = 50 }
  event_request_queue_depth_threshold = { "clear_percent" = 40, "set_percent" = 50 }
  event_request_rate_threshold        = { "clear_percent" = 40, "set_percent" = 50 }
  event_response_rate_threshold       = { "clear_percent" = 40, "set_percent" = 50 }
  global_caching_enabled              = true
  global_caching_heartbeat            = 4
  global_caching_topic_lifetime       = 3599
  max_memory                          = 2047
  max_msgs_per_topic                  = 2
  max_request_queue_depth             = 99999
  max_topic_count                     = 99999
  msg_lifetime                        = 4
  new_topic_advertisement_enabled     = true
}

resource "solacebroker_msg_vpn_distributed_cache_cluster_global_caching_home_cluster" "msg_vpn_distributed_cache_cluster_global_caching_home_cluster" {
  msg_vpn_name      = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  cache_name        = solacebroker_msg_vpn_distributed_cache.msg_vpn_distributed_cache.cache_name
  cluster_name      = solacebroker_msg_vpn_distributed_cache_cluster.msg_vpn_distributed_cache_cluster.cluster_name
  home_cluster_name = "test2"
}

resource "solacebroker_msg_vpn_distributed_cache_cluster_global_caching_home_cluster_topic_prefix" "msg_vpn_distributed_cache_cluster_global_caching_home_cluster_topic_prefix" {
  msg_vpn_name      = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  cache_name        = solacebroker_msg_vpn_distributed_cache.msg_vpn_distributed_cache.cache_name
  cluster_name      = solacebroker_msg_vpn_distributed_cache_cluster.msg_vpn_distributed_cache_cluster.cluster_name
  home_cluster_name = solacebroker_msg_vpn_distributed_cache_cluster_global_caching_home_cluster.msg_vpn_distributed_cache_cluster_global_caching_home_cluster.home_cluster_name
  topic_prefix      = "test3"
}

resource "solacebroker_msg_vpn_distributed_cache_cluster_instance" "msg_vpn_distributed_cache_cluster_instance" {
  msg_vpn_name             = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  cache_name               = solacebroker_msg_vpn_distributed_cache.msg_vpn_distributed_cache.cache_name
  cluster_name             = solacebroker_msg_vpn_distributed_cache_cluster.msg_vpn_distributed_cache_cluster.cluster_name
  instance_name            = "test4"
  auto_start_enabled       = true
  enabled                  = true
  stop_on_lost_msg_enabled = false
}

resource "solacebroker_msg_vpn_distributed_cache_cluster_topic" "msg_vpn_distributed_cache_cluster_topic" {
  msg_vpn_name = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  cache_name   = solacebroker_msg_vpn_distributed_cache.msg_vpn_distributed_cache.cache_name
  cluster_name = solacebroker_msg_vpn_distributed_cache_cluster.msg_vpn_distributed_cache_cluster.cluster_name
  topic        = "test"
}

resource "solacebroker_msg_vpn_dmr_bridge" "msg_vpn_dmr_bridge" {
  msg_vpn_name        = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  remote_node_name    = "test"
  remote_msg_vpn_name = "test"
}

resource "solacebroker_msg_vpn_jndi_connection_factory" "msg_vpn_jndi_connection_factory" {
  msg_vpn_name                                 = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  connection_factory_name                      = "test"
  allow_duplicate_client_id_enabled            = true
  client_description                           = "test"
  client_id                                    = "test"
  dto_receive_override_enabled                 = false
  dto_receive_subscriber_local_priority        = 2
  dto_receive_subscriber_network_priority      = 2
  dto_send_enabled                             = true
  dynamic_endpoint_create_durable_enabled      = true
  dynamic_endpoint_respect_ttl_enabled         = false
  guaranteed_receive_ack_timeout               = 999
  guaranteed_receive_reconnect_retry_count     = 1
  guaranteed_receive_reconnect_retry_wait      = 2999
  guaranteed_receive_window_size               = 17
  guaranteed_receive_window_size_ack_threshold = 59
  guaranteed_send_ack_timeout                  = 1999
  guaranteed_send_window_size                  = 254
  messaging_default_delivery_mode              = "non-persistent"
  messaging_default_dmq_eligible_enabled       = true
  messaging_default_eliding_eligible_enabled   = true
  messaging_jmsx_user_id_enabled               = true
  messaging_text_in_xml_payload_enabled        = false
  transport_compression_level                  = 0
  transport_connect_retry_count                = -1
  transport_connect_retry_per_host_count       = -1
  transport_connect_timeout                    = 2999
  transport_direct_transport_enabled           = false
  transport_keepalive_count                    = 4232
  transport_keepalive_enabled                  = false
  transport_keepalive_interval                 = 2999
  transport_msg_callback_on_io_thread_enabled  = true
  transport_optimize_direct_enabled            = true
  transport_port                               = 4214
  transport_read_timeout                       = 9999
  transport_receive_buffer_size                = 9999
  transport_reconnect_retry_count              = -1
  transport_reconnect_retry_wait               = 2999
  transport_send_buffer_size                   = 65533
  transport_tcp_no_delay_enabled               = false
  xa_enabled                                   = true
}

resource "solacebroker_msg_vpn_jndi_queue" "msg_vpn_jndi_queue" {
  msg_vpn_name  = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  queue_name    = "test1"
  physical_name = "test1"
}

resource "solacebroker_msg_vpn_jndi_topic" "msg_vpn_jndi_topic" {
  msg_vpn_name  = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  topic_name    = "test2"
  physical_name = "test2"
}

resource "solacebroker_msg_vpn_mqtt_retain_cache" "msg_vpn_mqtt_retain_cache" {
  msg_vpn_name = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  cache_name   = "test"
  enabled      = true
  msg_lifetime = 4
}

resource "solacebroker_msg_vpn_mqtt_session" "msg_vpn_mqtt_session" {
  msg_vpn_name                                        = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  mqtt_session_client_id                              = "test"
  mqtt_session_virtual_router                         = "auto"
  enabled                                             = true
  owner                                               = "test"
  queue_consumer_ack_propagation_enabled              = false
  queue_dead_msg_queue                                = "test"
  queue_event_bind_count_threshold                    = { "clear_percent" = 40, "set_percent" = 50 }
  queue_event_msg_spool_usage_threshold               = { "clear_percent" = 40, "set_percent" = 50 }
  queue_event_reject_low_priority_msg_limit_threshold = { "clear_percent" = 40, "set_percent" = 50 }
  queue_max_delivered_unacked_msgs_per_flow           = 9999
  queue_max_msg_size                                  = 999999
  queue_max_msg_spool_usage                           = 999
  queue_max_redelivery_count                          = 1
  queue_max_ttl                                       = 1
  queue_reject_low_priority_msg_enabled               = true
  queue_reject_low_priority_msg_limit                 = 1
  queue_reject_msg_to_sender_on_discard_behavior      = "always"
  queue_respect_ttl_enabled                           = true
}

resource "solacebroker_msg_vpn_mqtt_session_subscription" "msg_vpn_mqtt_session_subscription" {
  msg_vpn_name                = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  mqtt_session_client_id      = solacebroker_msg_vpn_mqtt_session.msg_vpn_mqtt_session.mqtt_session_client_id
  mqtt_session_virtual_router = solacebroker_msg_vpn_mqtt_session.msg_vpn_mqtt_session.mqtt_session_virtual_router
  subscription_topic          = "test"
  subscription_qos            = 1
}

resource "solacebroker_msg_vpn_proxy" "msg_vpn_proxy" {
  msg_vpn_name                  = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  proxy_name                    = "test"
  authentication_scheme         = "basic"
  authentication_basic_username = "test"
  authentication_basic_password = "test"
  enabled                       = true
  host                          = "192.168.1.1"
  port                          = "12345"
  proxy_type                    = "http"
}

resource "solacebroker_msg_vpn_queue" "msg_vpn_queue" {
  msg_vpn_name                                  = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  queue_name                                    = "test"
  access_type                                   = "non-exclusive"
  consumer_ack_propagation_enabled              = false
  dead_msg_queue                                = "test1"
  delivery_count_enabled                        = true
  delivery_delay                                = "1"
  egress_enabled                                = true
  event_bind_count_threshold                    = { "clear_percent" = 40, "set_percent" = 50 }
  event_msg_spool_usage_threshold               = { "clear_percent" = 40, "set_percent" = 50 }
  event_reject_low_priority_msg_limit_threshold = { "clear_percent" = 40, "set_percent" = 50 }
  ingress_enabled                               = true
  max_bind_count                                = 999
  max_delivered_unacked_msgs_per_flow           = 999
  max_msg_size                                  = 999
  max_msg_spool_usage                           = 9999
  max_redelivery_count                          = 9
  max_ttl                                       = 9
  owner                                         = "test"
  partition_count                               = 1
  partition_rebalance_delay                     = 6
  partition_rebalance_max_handoff_time          = 4
  permission                                    = "consume"
  redelivery_delay_enabled                      = true
  redelivery_delay_initial_interval             = 999
  redelivery_delay_max_interval                 = 9999
  redelivery_delay_multiplier                   = 199
  redelivery_enabled                            = true
  reject_low_priority_msg_enabled               = true
  reject_low_priority_msg_limit                 = 1
  reject_msg_to_sender_on_discard_behavior      = "always"
  respect_msg_priority_enabled                  = true
  respect_ttl_enabled                           = true
}

resource "solacebroker_msg_vpn_queue_subscription" "msg_vpn_queue_subscription" {
  msg_vpn_name       = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  queue_name         = solacebroker_msg_vpn_queue.msg_vpn_queue.queue_name
  subscription_topic = "test"
}

resource "solacebroker_msg_vpn_queue_template" "msg_vpn_queue_template" {
  msg_vpn_name                                  = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  queue_template_name                           = "test"
  access_type                                   = "non-exclusive"
  consumer_ack_propagation_enabled              = false
  dead_msg_queue                                = "test1"
  delivery_delay                                = "1"
  durability_override                           = "non-durable"
  event_bind_count_threshold                    = { "clear_percent" = 40, "set_percent" = 50 }
  event_msg_spool_usage_threshold               = { "clear_percent" = 40, "set_percent" = 50 }
  event_reject_low_priority_msg_limit_threshold = { "clear_percent" = 40, "set_percent" = 50 }
  max_bind_count                                = 999
  max_delivered_unacked_msgs_per_flow           = 999
  max_msg_size                                  = 999
  max_msg_spool_usage                           = 9999
  max_redelivery_count                          = 0
  max_ttl                                       = 9
  permission                                    = "consume"
  queue_name_filter                             = "test"
  redelivery_delay_enabled                      = true
  redelivery_delay_initial_interval             = 1
  redelivery_delay_max_interval                 = 1
  redelivery_delay_multiplier                   = 100
  redelivery_enabled                            = true
  reject_low_priority_msg_enabled               = true
  reject_low_priority_msg_limit                 = 1
  reject_msg_to_sender_on_discard_behavior      = "always"
  respect_msg_priority_enabled                  = true
  respect_ttl_enabled                           = true
}

resource "solacebroker_msg_vpn_replay_log" "msg_vpn_replay_log" {
  msg_vpn_name         = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  replay_log_name      = "test"
  egress_enabled       = true
  ingress_enabled      = true
  max_spool_usage      = 100
  topic_filter_enabled = true
}

resource "solacebroker_msg_vpn_replay_log_topic_filter_subscription" "msg_vpn_replay_log_topic_filter_subscription" {
  msg_vpn_name              = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  replay_log_name           = solacebroker_msg_vpn_replay_log.msg_vpn_replay_log.replay_log_name
  topic_filter_subscription = "test"
}

resource "solacebroker_msg_vpn_replicated_topic" "msg_vpn_replicated_topic" {
  msg_vpn_name     = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  replicated_topic = "test"
  replication_mode = "sync"
}

resource "solacebroker_msg_vpn_rest_delivery_point" "msg_vpn_rest_delivery_point" {
  msg_vpn_name             = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rest_delivery_point_name = "test"
  client_profile_name      = "default"
  enabled                  = true
  service                  = "test"
  vendor                   = "test"
}

resource "solacebroker_msg_vpn_rest_delivery_point_queue_binding" "msg_vpn_rest_delivery_point_queue_binding" {
  msg_vpn_name                             = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rest_delivery_point_name                 = solacebroker_msg_vpn_rest_delivery_point.msg_vpn_rest_delivery_point.rest_delivery_point_name
  queue_binding_name                       = "test"
  gateway_replace_target_authority_enabled = true
  post_request_target                      = "test"
  request_target_evaluation                = "substitution-expressions"
}

resource "solacebroker_msg_vpn_rest_delivery_point_queue_binding_protected_request_header" "msg_vpn_rest_delivery_point_queue_binding_protected_request_header" {
  msg_vpn_name             = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rest_delivery_point_name = solacebroker_msg_vpn_rest_delivery_point.msg_vpn_rest_delivery_point.rest_delivery_point_name
  queue_binding_name       = solacebroker_msg_vpn_rest_delivery_point_queue_binding.msg_vpn_rest_delivery_point_queue_binding.queue_binding_name
  header_name              = "test6"
  header_value             = "test"
}

resource "solacebroker_msg_vpn_rest_delivery_point_queue_binding_request_header" "msg_vpn_rest_delivery_point_queue_binding_request_header" {
  msg_vpn_name             = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rest_delivery_point_name = solacebroker_msg_vpn_rest_delivery_point.msg_vpn_rest_delivery_point.rest_delivery_point_name
  queue_binding_name       = solacebroker_msg_vpn_rest_delivery_point_queue_binding.msg_vpn_rest_delivery_point_queue_binding.queue_binding_name
  header_name              = "test5"
  header_value             = "test"
}

resource "solacebroker_msg_vpn_rest_delivery_point_rest_consumer" "msg_vpn_rest_delivery_point_rest_consumer" {
  msg_vpn_name                                     = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rest_delivery_point_name                         = solacebroker_msg_vpn_rest_delivery_point.msg_vpn_rest_delivery_point.rest_delivery_point_name
  rest_consumer_name                               = "test"
  authentication_aws_access_key_id                 = "test"
  authentication_aws_region                        = "test"
  authentication_aws_secret_access_key             = "test"
  authentication_aws_service                       = "test"
  authentication_client_cert_content               = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDc3jddBxAZ8uIf\nxerFpPmS67xYO0PEyMfP0syQ7AoZ0XJGyHvl/t4sOEZr1a0F5p0TVw5lzmkzBPk1\n+HjGZ7eGgSMtYHe2QhHNHdyLJOGbMd4rzjvyhtnjrlePI+ucn6puhtMOGyF9Cj8i\nmemy5HxF2iDO1ZRsgS4sA3SGfn8AxL5Tk4aB8j7vQhZwEtZWRR2gH0sVBAXEsmuU\ny6Xl+SaM6dhDrEl3KOBikxL+Y5ax/yJSp9m7ReWvzFOLd3PEkRkPqbf0hSIH/Roy\nkoVFN7aJu89bf8VOWV7cCuVQ+4AbpkHaJMsqb2wQ2rVSQ5GOZhjqBCGrobA+Evg8\n9ZdRHATnAgMBAAECggEAJR5bY5D6TcIZ6okSiaDOKLjhcFqVaw7rNawRoRFqKSif\n8fFjkSWiJQBYJWtFpsY5A7UPwGBOIbrmPwHBGmb32uz9AnVB6Sl1YGlyVRgfqjtZ\nQTdpr7qmB7OXF4FL6YiT1ftmoOpCWIdOUPxY4C2yDPM5rEkMpqeXIOJ7xNahdXlL\nLm+E0qxy2yt3khGhhKeObIiYpiln6z3VrRk5GA9U8aq0HP15IXBlxbfT9uzBZfbs\n4KlHCMOYEDE2+5r5R38kRCgMjkOuNAo38oMRIeEVlzbvq85WWFHs1kt/N8855zLt\nyDbnIn8SY6+fxeCGpecDef45Qb4xfAmRDLTLyJOFMQKBgQDuIPrW+YzGacBBLDWM\nzISw3jf9JsR4IWCD3zeSUAYjkHYwnBnyXfqZyGaMaQrE7GE16Wl20wVjEHeTJgdR\n+NZZ8ZpmHAHjfifSUjxn7t7M9Qo6VTp8W5LoaSs2HY4ylsSOK6RUPkXEIKAGvf7I\nf3VvdjJuWo0X04HPoC7u/rwMqwKBgQDtcZ2VfvoBYtIk6CpfAhRmhrPo2hJpyDB1\ny9MPmsYhCiB+/HcYsUt8zXUlCaOP1m/5tz58hSzTytvoB60Z+aXtG9I4XS3Wjhmd\nrEtuV0WiCA92vqKUVXWYnGy8L8pr6UXPgBezFvjHQKZzIoKByPCJckrEqCl8VUxh\nUcAvPVUwtQKBgHJxxTxWORMOtghcf+wISulaE1yGKjx2BhW6zNFzxk+HWVYpX8r8\n4bjQ+IAY58UWue2YHUivSFKBEobU6wW5awNVO1hBs6Kq+eZ6AXAN/GRSjDTWy0ID\nHMq36L2cXL/xd8vAK70VJKCK8X3sCCxCHaWRD9G7kT3XN/caTBQutx/7AoGAMB4j\nIiWOQnOlRGdsFr7UJYbMtLZknt07vNNmXTYvSojD1xgQhod/VbZJNA1FASQiowdY\neWF/mRf2AopzsNzfnDJUIqn3XRCE7mf5DU5QRSq+/4BYcBj1cMzaWDSTH9UxGYDK\nzLcuCSr30ENBEU4IOMJZlorBhXm/tcUcXjZeqjUCgYEAwpOFx8KHazph2ial9954\ndq0IZZrhrLPoaLQVwLnUITpvKw1ORxdzLH8VNvRTcPF6XRt7BcV8aRcENW7R0Ozd\nQa4T12AxqCFp2tdD7juOMJoFVwr5Cq5DyN935QP7PiGhqBRJYkXvBMCezFD7XloC\njjroojuJIsIhfhgvoKj37oE=\n-----END PRIVATE KEY-----\n-----BEGIN CERTIFICATE-----\nMIIIAjCCBuqgAwIBAgIJALYF/Umvsgf3MA0GCSqGSIb3DQEBCwUAME8xCzAJBgNV\nBAYTAkNBMRAwDgYDVQQIDAdPbnRhcmlvMQ8wDQYDVQQHDAZPdHRhd2ExDzANBgNV\nBAoMBlNvbGFjZTEMMAoGA1UEAwwDYWZ3MCAXDTIzMDMwNzE3MDExMloYDzIxMjMw\nMjExMTcwMTEyWjB1MQswCQYDVQQGEwJDQTEQMA4GA1UECAwHT250YXJpbzEPMA0G\nA1UEBwwGT3R0YXdhMQ8wDQYDVQQKDAZTb2xhY2UxDDAKBgNVBAMMA2FmdzEkMCIG\nCSqGSIb3DQEJARYVdm1yLTEzMi05NkBzb2xhY2UuY29tMIIBIjANBgkqhkiG9w0B\nAQEFAAOCAQ8AMIIBCgKCAQEA3N43XQcQGfLiH8XqxaT5kuu8WDtDxMjHz9LMkOwK\nGdFyRsh75f7eLDhGa9WtBeadE1cOZc5pMwT5Nfh4xme3hoEjLWB3tkIRzR3ciyTh\nmzHeK8478obZ465XjyPrnJ+qbobTDhshfQo/IpnpsuR8RdogztWUbIEuLAN0hn5/\nAMS+U5OGgfI+70IWcBLWVkUdoB9LFQQFxLJrlMul5fkmjOnYQ6xJdyjgYpMS/mOW\nsf8iUqfZu0Xlr8xTi3dzxJEZD6m39IUiB/0aMpKFRTe2ibvPW3/FTlle3ArlUPuA\nG6ZB2iTLKm9sENq1UkORjmYY6gQhq6GwPhL4PPWXURwE5wIDAQABo4IEtzCCBLMw\nCQYDVR0TBAIwADALBgNVHQ8EBAMCBeAwggSXBgNVHREEggSOMIIEiocEwKiEYIcQ\n/YAAAAAAASgBkgFoATIAloIEZTk2bYIJZTk2bS5pcHY0ggllOTZtLmlwdjaCgf1l\nOTZtLmNvbS5zb2xhY2UtdGVzdC52bXItbXVsdGktY2xvdWQuQWFhYWFhYWFhYS5C\nYmJiYmJiYmJiLkNjY2NjY2NjY2MuRGRkZGRkZGRkZC5FZWVlZWVlZWVlLkZmZmZm\nZmZmZmYuR2dnZ2dnZ2dnZy5IaGhoaGhoaGhoLklpaWlpaWlpaWkuSmpqampqampq\nai5La2tra2tra2trLkxsbGxsbGxsbGwuTW1tbW1tbW1tbS5Obm5ubm5ubm5uLk9v\nb29vb29vb28uUHBwcHBwcHBwcC5RcXFxcXFxcXFxLlJycnJycnJycnIuU3Nzc3Nz\nc3Nzcy5UdHR0dHR0goH9ZTk2bS5jb20uc29sYWNlLXRlc3Qudm1yLW11bHRpLWNs\nb3VkLkFhYWFhYWFhYWEuQmJiYmJiYmJiYi5DY2NjY2NjY2NjLkRkZGRkZGRkZGQu\nRWVlZWVlZWVlZS5GZmZmZmZmZmZmLkdnZ2dnZ2dnZ2cuSGhoaGhoaGhoaC5JaWlp\naWlpaWlpLkpqampqampqamouS2tra2tra2tray5MbGxsbGxsbGxsLk1tbW1tbW1t\nbW0uTm5ubm5ubm5ubi5Pb29vb29vb29vLlBwcHBwcHBwcHAuUXFxcXFxcXFxcS5S\ncnJycnJycnJyLlNzc3Nzc3Nzc3MuVHR0dHR0dIIMZTk2bS5zb2x0ZXN0ghFlOTZt\nLmlwdjQuc29sdGVzdIIRZTk2bS5pcHY2LnNvbHRlc3SCgf1lOTZtLmNvbS5zb2xh\nY2UtdGVzdC52bXItbXVsdGktY2xvdWQuQWFhYWFhYWFhYS5CYmJiYmJiYmJiLkNj\nY2NjY2NjY2MuRGRkZGRkZGRkZC5FZWVlZWVlZWVlLkZmZmZmZmZmZmYuR2dnZ2dn\nZ2dnZy5IaGhoaGhoaGhoLklpaWlpaWlpaWkuSmpqampqampqai5La2tra2tra2tr\nLkxsbGxsbGxsbGwuTW1tbW1tbW1tbS5Obm5ubm5ubm5uLk9vb29vb29vb28uUHBw\ncHBwcHBwcC5RcXFxcXFxcXFxLlJycnJycnJycnIuU3Nzc3Nzc3Nzcy5zb2x0ZXN0\ngoH9ZTk2bS5jb20uc29sYWNlLXRlc3Qudm1yLW11bHRpLWNsb3VkLkFhYWFhYWFh\nYWEuQmJiYmJiYmJiYi5DY2NjY2NjY2NjLkRkZGRkZGRkZGQuRWVlZWVlZWVlZS5G\nZmZmZmZmZmZmLkdnZ2dnZ2dnZ2cuSGhoaGhoaGhoaC5JaWlpaWlpaWlpLkpqampq\nampqamouS2tra2tra2tray5MbGxsbGxsbGxsLk1tbW1tbW1tbW0uTm5ubm5ubm5u\nbi5Pb29vb29vb29vLlBwcHBwcHBwcHAuUXFxcXFxcXFxcS5ScnJycnJycnJyLlNz\nc3Nzc3Nzc3Muc29sdGVzdIIKdm1yLTEzMi05NoIUdm1yLTEzMi05Ni5zb2wtbG9j\nYWwwDQYJKoZIhvcNAQELBQADggEBALw9t+131ytbltmPk8LKmYNo/tWWsJgwcxGu\npzconod45Ibia2Sep1yNll2Oqx1/Te6vk93WmHnP2F01N/o9mWZSMbsw2mxWi+EJ\nd5TSvr14Elb7/6bsc8b82SF3UIFVlBe2ng3M6a0r/g3UG2Nq7O4EoRwt8msIUfI+\nW2k1YOOplaejxKwbIOxBe4qpagdwtwOWvmjM//IrRCI+GiXZ7UfO5nG0Dzy85lX2\n80mOjL5WX1c9QalW/c4tU/W2gBXt+/GlZ9M0WFSmiBfexSp75G8/tVCfbwV+XUBw\nX8aEQnKCo/w72bD2C52Di/OnxteRT+NFdNMafngPpPTHk9hnRgU=\n-----END CERTIFICATE-----"
  authentication_client_cert_password              = "test"
  authentication_http_basic_password               = "test"
  authentication_http_basic_username               = "test"
  authentication_http_header_name                  = "test"
  authentication_http_header_value                 = "test"
  authentication_oauth_client_id                   = "test"
  authentication_oauth_client_scope                = "test"
  authentication_oauth_client_secret               = "test"
  authentication_oauth_client_token_endpoint       = "https://192.168.1.1:8324"
  authentication_oauth_client_token_expiry_default = 899
  authentication_oauth_jwt_secret_key              = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDc3jddBxAZ8uIf\nxerFpPmS67xYO0PEyMfP0syQ7AoZ0XJGyHvl/t4sOEZr1a0F5p0TVw5lzmkzBPk1\n+HjGZ7eGgSMtYHe2QhHNHdyLJOGbMd4rzjvyhtnjrlePI+ucn6puhtMOGyF9Cj8i\nmemy5HxF2iDO1ZRsgS4sA3SGfn8AxL5Tk4aB8j7vQhZwEtZWRR2gH0sVBAXEsmuU\ny6Xl+SaM6dhDrEl3KOBikxL+Y5ax/yJSp9m7ReWvzFOLd3PEkRkPqbf0hSIH/Roy\nkoVFN7aJu89bf8VOWV7cCuVQ+4AbpkHaJMsqb2wQ2rVSQ5GOZhjqBCGrobA+Evg8\n9ZdRHATnAgMBAAECggEAJR5bY5D6TcIZ6okSiaDOKLjhcFqVaw7rNawRoRFqKSif\n8fFjkSWiJQBYJWtFpsY5A7UPwGBOIbrmPwHBGmb32uz9AnVB6Sl1YGlyVRgfqjtZ\nQTdpr7qmB7OXF4FL6YiT1ftmoOpCWIdOUPxY4C2yDPM5rEkMpqeXIOJ7xNahdXlL\nLm+E0qxy2yt3khGhhKeObIiYpiln6z3VrRk5GA9U8aq0HP15IXBlxbfT9uzBZfbs\n4KlHCMOYEDE2+5r5R38kRCgMjkOuNAo38oMRIeEVlzbvq85WWFHs1kt/N8855zLt\nyDbnIn8SY6+fxeCGpecDef45Qb4xfAmRDLTLyJOFMQKBgQDuIPrW+YzGacBBLDWM\nzISw3jf9JsR4IWCD3zeSUAYjkHYwnBnyXfqZyGaMaQrE7GE16Wl20wVjEHeTJgdR\n+NZZ8ZpmHAHjfifSUjxn7t7M9Qo6VTp8W5LoaSs2HY4ylsSOK6RUPkXEIKAGvf7I\nf3VvdjJuWo0X04HPoC7u/rwMqwKBgQDtcZ2VfvoBYtIk6CpfAhRmhrPo2hJpyDB1\ny9MPmsYhCiB+/HcYsUt8zXUlCaOP1m/5tz58hSzTytvoB60Z+aXtG9I4XS3Wjhmd\nrEtuV0WiCA92vqKUVXWYnGy8L8pr6UXPgBezFvjHQKZzIoKByPCJckrEqCl8VUxh\nUcAvPVUwtQKBgHJxxTxWORMOtghcf+wISulaE1yGKjx2BhW6zNFzxk+HWVYpX8r8\n4bjQ+IAY58UWue2YHUivSFKBEobU6wW5awNVO1hBs6Kq+eZ6AXAN/GRSjDTWy0ID\nHMq36L2cXL/xd8vAK70VJKCK8X3sCCxCHaWRD9G7kT3XN/caTBQutx/7AoGAMB4j\nIiWOQnOlRGdsFr7UJYbMtLZknt07vNNmXTYvSojD1xgQhod/VbZJNA1FASQiowdY\neWF/mRf2AopzsNzfnDJUIqn3XRCE7mf5DU5QRSq+/4BYcBj1cMzaWDSTH9UxGYDK\nzLcuCSr30ENBEU4IOMJZlorBhXm/tcUcXjZeqjUCgYEAwpOFx8KHazph2ial9954\ndq0IZZrhrLPoaLQVwLnUITpvKw1ORxdzLH8VNvRTcPF6XRt7BcV8aRcENW7R0Ozd\nQa4T12AxqCFp2tdD7juOMJoFVwr5Cq5DyN935QP7PiGhqBRJYkXvBMCezFD7XloC\njjroojuJIsIhfhgvoKj37oE=\n-----END PRIVATE KEY-----\n"
  authentication_oauth_jwt_token_endpoint          = "https://192.168.1.1:8244"
  authentication_oauth_jwt_token_expiry_default    = 899
  authentication_scheme                            = "oauth-jwt"
  enabled                                          = false
  http_method                                      = "put"
  local_interface                                  = "test"
  max_post_wait_time                               = 29
  outgoing_connection_count                        = 4
  proxy_name                                       = "test"
  remote_host                                      = "192.168.1.2"
  remote_port                                      = 2423
  retry_delay                                      = 4
  tls_cipher_suite_list                            = "default"
  tls_enabled                                      = true
}

resource "solacebroker_msg_vpn_rest_delivery_point_rest_consumer_oauth_jwt_claim" "msg_vpn_rest_delivery_point_rest_consumer_oauth_jwt_claim" {
  msg_vpn_name             = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  rest_delivery_point_name = solacebroker_msg_vpn_rest_delivery_point.msg_vpn_rest_delivery_point.rest_delivery_point_name
  rest_consumer_name       = solacebroker_msg_vpn_rest_delivery_point_rest_consumer.msg_vpn_rest_delivery_point_rest_consumer.rest_consumer_name
  oauth_jwt_claim_name     = "test"
  oauth_jwt_claim_value    = "{\"test\":1}"
}

resource "solacebroker_msg_vpn_sequenced_topic" "msg_vpn_sequenced_topic" {
  msg_vpn_name    = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  sequenced_topic = "test"
}

resource "solacebroker_msg_vpn_topic_endpoint" "msg_vpn_topic_endpoint" {
  msg_vpn_name                                  = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  topic_endpoint_name                           = "test"
  access_type                                   = "non-exclusive"
  consumer_ack_propagation_enabled              = false
  dead_msg_queue                                = "test"
  delivery_count_enabled                        = true
  delivery_delay                                = 1
  egress_enabled                                = true
  event_bind_count_threshold                    = { "clear_percent" = 40, "set_percent" = 50 }
  event_reject_low_priority_msg_limit_threshold = { "clear_percent" = 40, "set_percent" = 50 }
  event_spool_usage_threshold                   = { "clear_percent" = 40, "set_percent" = 50 }
  ingress_enabled                               = true
  max_bind_count                                = 2
  max_delivered_unacked_msgs_per_flow           = 9999
  max_msg_size                                  = 99999
  max_redelivery_count                          = 9
  max_spool_usage                               = 999
  max_ttl                                       = 9
  owner                                         = "test"
  permission                                    = "delete"
  redelivery_delay_enabled                      = true
  redelivery_delay_initial_interval             = 999
  redelivery_delay_max_interval                 = 9999
  redelivery_delay_multiplier                   = 199
  redelivery_enabled                            = true
  reject_low_priority_msg_enabled               = true
  reject_low_priority_msg_limit                 = 9
  reject_msg_to_sender_on_discard_behavior      = "always"
  respect_msg_priority_enabled                  = true
  respect_ttl_enabled                           = true
}

resource "solacebroker_msg_vpn_topic_endpoint_template" "msg_vpn_topic_endpoint_template" {
  msg_vpn_name                                  = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  topic_endpoint_template_name                  = solacebroker_msg_vpn_topic_endpoint.msg_vpn_topic_endpoint.topic_endpoint_name
  access_type                                   = "non-exclusive"
  consumer_ack_propagation_enabled              = false
  dead_msg_queue                                = "test"
  delivery_delay                                = 1
  event_bind_count_threshold                    = { "clear_percent" = 40, "set_percent" = 50 }
  event_reject_low_priority_msg_limit_threshold = { "clear_percent" = 40, "set_percent" = 50 }
  event_msg_spool_usage_threshold               = { "clear_percent" = 40, "set_percent" = 50 }
  max_bind_count                                = 2
  max_delivered_unacked_msgs_per_flow           = 9999
  max_msg_size                                  = 99999
  max_msg_spool_usage                           = 999
  max_redelivery_count                          = 9
  max_ttl                                       = 9
  permission                                    = "delete"
  redelivery_delay_enabled                      = true
  redelivery_delay_initial_interval             = 999
  redelivery_delay_max_interval                 = 9999
  redelivery_delay_multiplier                   = 199
  redelivery_enabled                            = true
  reject_low_priority_msg_enabled               = true
  reject_low_priority_msg_limit                 = 9
  reject_msg_to_sender_on_discard_behavior      = "always"
  respect_msg_priority_enabled                  = true
  respect_ttl_enabled                           = true
  topic_endpoint_name_filter                    = "test"
}

resource "solacebroker_oauth_profile" "oauth_profile" {
  oauth_profile_name                         = "test"
  access_level_groups_claim_name             = "test"
  access_level_groups_claim_string_format    = "space-delimited"
  client_id                                  = "test"
  client_redirect_uri                        = "https://test1:2141"
  client_required_type                       = "test"
  client_scope                               = "test"
  client_secret                              = "test"
  client_validate_type_enabled               = false
  default_global_access_level                = "read-only"
  default_msg_vpn_access_level               = "read-only"
  display_name                               = "test"
  enabled                                    = true
  endpoint_authorization                     = "https://test1:3421"
  endpoint_discovery                         = "https://test1:3221"
  endpoint_discovery_refresh_interval        = 86399
  endpoint_introspection                     = "https://test1:6342"
  endpoint_introspection_timeout             = 2
  endpoint_jwks                              = "https://test1:8523"
  endpoint_jwks_refresh_interval             = 86399
  endpoint_token                             = "https://test1:1244"
  endpoint_token_timeout                     = 2
  endpoint_userinfo                          = "https://test1:2463"
  endpoint_userinfo_timeout                  = 2
  interactive_enabled                        = false
  interactive_prompt_for_expired_session     = "test"
  interactive_prompt_for_new_session         = "test"
  issuer                                     = "test"
  oauth_role                                 = "resource-server"
  resource_server_parse_access_token_enabled = false
  resource_server_required_audience          = "test"
  resource_server_required_issuer            = "test"
  resource_server_required_scope             = "test"
  resource_server_required_type              = "test"
  resource_server_validate_audience_enabled  = false
  resource_server_validate_issuer_enabled    = false
  resource_server_validate_scope_enabled     = false
  resource_server_validate_type_enabled      = false
  semp_enabled                               = false
  username_claim_name                        = "test"
}

resource "solacebroker_oauth_profile_access_level_group" "oauth_profile_access_level_group" {
  oauth_profile_name   = solacebroker_oauth_profile.oauth_profile.oauth_profile_name
  group_name           = "test"
  description          = "test"
  global_access_level  = "admin"
  msg_vpn_access_level = "read-write"
}

resource "solacebroker_oauth_profile_access_level_group_msg_vpn_access_level_exception" "oauth_profile_access_level_group_msg_vpn_access_level_exception" {
  oauth_profile_name = solacebroker_oauth_profile.oauth_profile.oauth_profile_name
  msg_vpn_name       = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  group_name         = solacebroker_oauth_profile_access_level_group.oauth_profile_access_level_group.group_name
  access_level       = "read-write"
}

resource "solacebroker_oauth_profile_client_allowed_host" "oauth_profile_client_allowed_host" {
  oauth_profile_name = solacebroker_oauth_profile.oauth_profile.oauth_profile_name
  allowed_host       = "test"
}

resource "solacebroker_oauth_profile_client_authorization_parameter" "oauth_profile_client_authorization_parameter" {
  oauth_profile_name            = solacebroker_oauth_profile.oauth_profile.oauth_profile_name
  authorization_parameter_name  = "test"
  authorization_parameter_value = "test"
}

resource "solacebroker_oauth_profile_client_required_claim" "oauth_profile_client_required_claim" {
  oauth_profile_name          = solacebroker_oauth_profile.oauth_profile.oauth_profile_name
  client_required_claim_name  = "test"
  client_required_claim_value = "{\"test\":1}"
}

resource "solacebroker_oauth_profile_default_msg_vpn_access_level_exception" "oauth_profile_default_msg_vpn_access_level_exception" {
  oauth_profile_name = solacebroker_oauth_profile.oauth_profile.oauth_profile_name
  msg_vpn_name       = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
  access_level       = "read-only"
}

resource "solacebroker_oauth_profile_resource_server_required_claim" "oauth_profile_resource_server_required_claim" {
  oauth_profile_name                   = solacebroker_oauth_profile.oauth_profile.oauth_profile_name
  resource_server_required_claim_name  = "test"
  resource_server_required_claim_value = "{\"test\":1}"
}

resource "solacebroker_virtual_hostname" "virtual_hostname" {
  virtual_hostname = "test"
  enabled          = true
  msg_vpn_name     = solacebroker_msg_vpn.msg_vpn.msg_vpn_name
}
