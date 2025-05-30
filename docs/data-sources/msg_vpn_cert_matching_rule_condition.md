---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_msg_vpn_cert_matching_rule_condition Data Source - solacebroker"
subcategory: ""
description: |-
  A Cert Matching Rule Condition compares data extracted from a certificate to a username attribute or an expression.
  The minimum access scope/level required to perform this operation is "vpn/read-only".
  This has been available since SEMP API version 2.27.
---

# solacebroker_msg_vpn_cert_matching_rule_condition (Data Source)

A Cert Matching Rule Condition compares data extracted from a certificate to a username attribute or an expression.



The minimum access scope/level required to perform this operation is "vpn/read-only".

This has been available since SEMP API version 2.27.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `msg_vpn_name` (String) The name of the Message VPN.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `rule_name` (String) The name of the rule.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only".
- `source` (String) Certificate field to be compared with the Attribute.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The allowed values and their meaning are:

<pre>
"certificate-thumbprint" - The attribute is computed as the SHA-1 hash over the entire DER-encoded contents of the client certificate.
"common-name" - The attribute is extracted from the certificate's first instance of the Common Name attribute in the Subject DN.
"common-name-last" - The attribute is extracted from the certificate's last instance of the Common Name attribute in the Subject DN.
"subject-alternate-name-msupn" - The attribute is extracted from the certificate's Other Name type of the Subject Alternative Name and must have the msUPN signature.
"uid" - The attribute is extracted from the certificate's first instance of the User Identifier attribute in the Subject DN.
"uid-last" - The attribute is extracted from the certificate's last instance of the User Identifier attribute in the Subject DN.
"org-unit" - The attribute is extracted from the certificate's first instance of the Org Unit attribute in the Subject DN.
"org-unit-last" - The attribute is extracted from the certificate's last instance of the Org Unit attribute in the Subject DN.
"issuer" - The attribute is extracted from the certificate's Issuer DN.
"subject" - The attribute is extracted from the certificate's Subject DN.
"serial-number" - The attribute is extracted from the certificate's Serial Number.
"dns-name" - The attribute is extracted from the certificate's Subject Alt Name DNS Name.
"ip-address" - The attribute is extracted from the certificate's Subject Alt Name IP Address.
</pre>

### Read-Only

- `attribute` (String) Client Username Attribute to be compared with certificate content. Either an attribute or an expression must be provided on creation, but not both.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The default value is `""`.
- `expression` (String) Glob expression to be matched with certificate content. Either an expression or an attribute must be provided on creation, but not both.

The minimum access scope/level required to retrieve this attribute is "vpn/read-only". The default value is `""`.
