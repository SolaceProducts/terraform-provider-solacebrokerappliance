// terraform-provider-solacebroker
//
// Copyright 2025 Solace Corporation. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package generated

import (
	"github.com/hashicorp/terraform-plugin-framework-validators/stringvalidator"
	"github.com/hashicorp/terraform-plugin-framework/schema/validator"
	"github.com/hashicorp/terraform-plugin-framework/types"
	"github.com/hashicorp/terraform-plugin-go/tftypes"
	"regexp"
	"terraform-provider-solacebroker/internal/broker"
)

func init() {
	info := broker.EntityInputs{
		TerraformName:       "msg_vpn_cert_matching_rule_condition",
		MarkdownDescription: "A Cert Matching Rule Condition compares data extracted from a certificate to a username attribute or an expression.\n\n\n\nThe minimum access scope/level required to perform this operation is \"vpn/read-only\".\n\nThis has been available since SEMP API version 2.27.",
		ObjectType:          broker.ReplaceOnlyObject,
		PathTemplate:        "/msgVpns/{msgVpnName}/certMatchingRules/{ruleName}/conditions/{source}",
		PostPathTemplate:    "/msgVpns/{msgVpnName}/certMatchingRules/{ruleName}/conditions",
		Version:             0, // Placeholder: value will be replaced in the provider code
		Attributes: []*broker.AttributeInfo{
			{
				BaseType:            broker.String,
				SempName:            "attribute",
				TerraformName:       "attribute",
				MarkdownDescription: "Client Username Attribute to be compared with certificate content. Either an attribute or an expression must be provided on creation, but not both.\n\nThe minimum access scope/level required to retrieve this attribute is \"vpn/read-only\". The default value is `\"\"`.",
				RequiresReplace:     true,
				Type:                types.StringType,
				TerraformType:       tftypes.String,
				Converter:           broker.SimpleConverter[string]{TerraformType: tftypes.String},
				StringValidators: []validator.String{
					stringvalidator.LengthBetween(0, 64),
					stringvalidator.RegexMatches(regexp.MustCompile("^([A-Za-z][A-Za-z0-9\\-]*)?$"), ""),
				},
				Default: "",
			},
			{
				BaseType:            broker.String,
				SempName:            "expression",
				TerraformName:       "expression",
				MarkdownDescription: "Glob expression to be matched with certificate content. Either an expression or an attribute must be provided on creation, but not both.\n\nThe minimum access scope/level required to retrieve this attribute is \"vpn/read-only\". The default value is `\"\"`.",
				RequiresReplace:     true,
				Type:                types.StringType,
				TerraformType:       tftypes.String,
				Converter:           broker.SimpleConverter[string]{TerraformType: tftypes.String},
				StringValidators: []validator.String{
					stringvalidator.LengthBetween(0, 256),
				},
				Default: "",
			},
			{
				BaseType:            broker.String,
				SempName:            "msgVpnName",
				TerraformName:       "msg_vpn_name",
				MarkdownDescription: "The name of the Message VPN.\n\nThe minimum access scope/level required to retrieve this attribute is \"vpn/read-only\".",
				Identifying:         true,
				Required:            true,
				ReadOnly:            true,
				RequiresReplace:     true,
				Type:                types.StringType,
				TerraformType:       tftypes.String,
				Converter:           broker.SimpleConverter[string]{TerraformType: tftypes.String},
				StringValidators: []validator.String{
					stringvalidator.LengthBetween(1, 32),
					stringvalidator.RegexMatches(regexp.MustCompile("^[^*?]+$"), ""),
				},
			},
			{
				BaseType:            broker.String,
				SempName:            "ruleName",
				TerraformName:       "rule_name",
				MarkdownDescription: "The name of the rule.\n\nThe minimum access scope/level required to retrieve this attribute is \"vpn/read-only\".",
				Identifying:         true,
				Required:            true,
				ReadOnly:            true,
				RequiresReplace:     true,
				Type:                types.StringType,
				TerraformType:       tftypes.String,
				Converter:           broker.SimpleConverter[string]{TerraformType: tftypes.String},
				StringValidators: []validator.String{
					stringvalidator.LengthBetween(1, 64),
				},
			},
			{
				BaseType:            broker.String,
				SempName:            "source",
				TerraformName:       "source",
				MarkdownDescription: "Certificate field to be compared with the Attribute.\n\nThe minimum access scope/level required to retrieve this attribute is \"vpn/read-only\". The allowed values and their meaning are:\n\n<pre>\n\"certificate-thumbprint\" - The attribute is computed as the SHA-1 hash over the entire DER-encoded contents of the client certificate.\n\"common-name\" - The attribute is extracted from the certificate's first instance of the Common Name attribute in the Subject DN.\n\"common-name-last\" - The attribute is extracted from the certificate's last instance of the Common Name attribute in the Subject DN.\n\"subject-alternate-name-msupn\" - The attribute is extracted from the certificate's Other Name type of the Subject Alternative Name and must have the msUPN signature.\n\"uid\" - The attribute is extracted from the certificate's first instance of the User Identifier attribute in the Subject DN.\n\"uid-last\" - The attribute is extracted from the certificate's last instance of the User Identifier attribute in the Subject DN.\n\"org-unit\" - The attribute is extracted from the certificate's first instance of the Org Unit attribute in the Subject DN.\n\"org-unit-last\" - The attribute is extracted from the certificate's last instance of the Org Unit attribute in the Subject DN.\n\"issuer\" - The attribute is extracted from the certificate's Issuer DN.\n\"subject\" - The attribute is extracted from the certificate's Subject DN.\n\"serial-number\" - The attribute is extracted from the certificate's Serial Number.\n\"dns-name\" - The attribute is extracted from the certificate's Subject Alt Name DNS Name.\n\"ip-address\" - The attribute is extracted from the certificate's Subject Alt Name IP Address.\n</pre>\n",
				Identifying:         true,
				Required:            true,
				RequiresReplace:     true,
				Type:                types.StringType,
				TerraformType:       tftypes.String,
				Converter:           broker.SimpleConverter[string]{TerraformType: tftypes.String},
				StringValidators: []validator.String{
					stringvalidator.OneOf("certificate-thumbprint", "common-name", "common-name-last", "subject-alternate-name-msupn", "uid", "uid-last", "org-unit", "org-unit-last", "issuer", "subject", "serial-number", "dns-name", "ip-address"),
				},
			},
		},
	}
	broker.RegisterResource(info)
	broker.RegisterDataSource(info)
}
