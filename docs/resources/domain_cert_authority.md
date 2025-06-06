---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "solacebroker_domain_cert_authority Resource - solacebroker"
subcategory: ""
description: |-
  This resource is not supported in production by Solace in this version, see provider limitations.
  Certificate Authorities trusted for domain verification.
  The minimum access scope/level required to perform this operation is "global/read-only".
  This has been available since SEMP API version 2.19.
  The import identifier for this resource is {cert_authority_name}, where {&lt;attribute&gt;} represents the value of the attribute and it must be URL-encoded.
---

# solacebroker_domain_cert_authority (Resource)

> This resource is not supported in production by Solace in this version, see [provider limitations](https://registry.terraform.io/providers/solaceproducts/solacebrokerappliance/latest/docs#limitations).

Certificate Authorities trusted for domain verification.



The minimum access scope/level required to perform this operation is "global/read-only".

This has been available since SEMP API version 2.19.

The import identifier for this resource is `{cert_authority_name}`, where {&lt;attribute&gt;} represents the value of the attribute and it must be URL-encoded.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `cert_authority_name` (String) The name of the Certificate Authority.

The minimum access scope/level required to retrieve this attribute is "global/read-only".

### Optional

- `cert_content` (String) The PEM formatted content for the trusted root certificate of a domain Certificate Authority.

The minimum access scope/level required to retrieve this attribute is "global/read-only". The minimum access scope/level required to change this attribute is "global/admin". Changes to this attribute are synchronized to HA mates via config-sync. The default value is `""`.
