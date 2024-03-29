---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_oauth_profile_client_authorization_parameter Data Source - solacebroker"
subcategory: ""
description: |-
  Additional parameters to be passed to the OAuth authorization endpoint.
  Attribute|Identifying
  :---|:---:
  authorizationparametername|x
  oauthprofilename|x
  A SEMP client authorized with a minimum access scope/level of "global/read-only" is required to perform this operation.
  This has been available since SEMP API version 2.24.
---

# solacebroker_oauth_profile_client_authorization_parameter (Data Source)

Additional parameters to be passed to the OAuth authorization endpoint.


Attribute|Identifying
:---|:---:
authorization_parameter_name|x
oauth_profile_name|x



A SEMP client authorized with a minimum access scope/level of "global/read-only" is required to perform this operation.

This has been available since SEMP API version 2.24.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `authorization_parameter_name` (String) The name of the authorization parameter.
- `oauth_profile_name` (String) The name of the OAuth profile.

### Read-Only

- `authorization_parameter_value` (String) The authorization parameter value. Changes to this attribute are synchronized to HA mates via config-sync. The default value is `""`.
