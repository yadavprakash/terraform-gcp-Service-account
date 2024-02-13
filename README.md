## Terraform-gcp-service-account
## Terraform Google Cloud service-account Module
## Table of Contents

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This project deploys a Google Cloud infrastructure using Terraform to create service-account .

## Usage

To use this module, you should have Terraform installed and configured for GCP. This module provides the necessary Terraform configuration for creating GCP resources, and you can customize the inputs as needed. Below is an example of how to use this module:
# Example: service-account

```hcl
module "service-account" {
  source                             = "https://github.com/opsstation/terraform-gcp-Service-account.git"
  name                               = "dev"
  environment                        = "test"
  google_service_account_key_enabled = true
  key_algorithm                      = "KEY_ALG_RSA_2048"
  public_key_type                    = "TYPE_X509_PEM_FILE"
  private_key_type                   = "TYPE_GOOGLE_CREDENTIALS_FILE"
  members                            = []
}
```

This example demonstrates how to create various GCP resources using the provided modules. Adjust the input values to suit your specific requirements.

## Module Inputs

- `name`: The name of the application or resource.
- `environment`: The environment in which the resource exists.
- `label_order`: The order in which labels should be applied.
- `business_unit`: The business unit associated with the application.
- `attributes`: Additional attributes to add to the labels.
- `extra_tags`: Extra tags to associate with the resource.

## Module Outputs
- This module currently does not provide any outputs.

# Examples
For detailed examples on how to use this module, please refer to the [example](https://github.com/opsstation/terraform-gcp-Service-account/tree/master/_example) directory within this repository.

## Authors
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opsstation/terraform-gcp-Service-account/blob/master/LICENSE) file for details.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.75, < 5.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 4.75, < 5.13.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.75, < 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::git@github.com:opsstation/terraform-gcp-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [google_service_account.service_account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account_iam_binding.admin-account-iam](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_binding) | resource |
| [google_service_account_key.mykey](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_key) | resource |
| [google_client_config.current](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | (Required) The account id that is used to generate the service account email address and a stable unique id. | `string` | `"service-account-id"` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | (Optional) Whether a service account is disabled or not. Defaults to false. | `bool` | `false` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | n/a | `string` | `"Service Account"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | A boolean flag to enable/disable service-account . | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_google_service_account_enabled"></a> [google\_service\_account\_enabled](#input\_google\_service\_account\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_google_service_account_iam_binding_enabled"></a> [google\_service\_account\_iam\_binding\_enabled](#input\_google\_service\_account\_iam\_binding\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_google_service_account_key_enabled"></a> [google\_service\_account\_key\_enabled](#input\_google\_service\_account\_key\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_keepers"></a> [keepers](#input\_keepers) | Arbitrary map of values that, when changed, will trigger a new key to be generated. | `map(string)` | `null` | no |
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | (Optional) The algorithm used to generate the key. KEY\_ALG\_RSA\_2048 is the default algorithm. | `string` | `"KEY_ALG_RSA_2048"` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] . | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy,opsstation | `string` | `"opsstation"` | no |
| <a name="input_members"></a> [members](#input\_members) | n/a | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource. Provided by the client when the resource is created. | `string` | `""` | no |
| <a name="input_private_key_type"></a> [private\_key\_type](#input\_private\_key\_type) | (Optional) The output format of the private key. TYPE\_GOOGLE\_CREDENTIALS\_FILE is the default output format. | `string` | `"TYPE_GOOGLE_CREDENTIALS_FILE"` | no |
| <a name="input_public_key_type"></a> [public\_key\_type](#input\_public\_key\_type) | (Optional) The output format of the public key requested. TYPE\_X509\_PEM\_FILE is the default output format. | `string` | `"TYPE_X509_PEM_FILE"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `""` | no |
| <a name="input_role"></a> [role](#input\_role) | n/a | `list(string)` | <pre>[<br>  "roles/iam.serviceAccountUser"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_email"></a> [account\_email](#output\_account\_email) | The e-mail address of the service account. |
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | an identifier for the resource with format |
| <a name="output_account_name"></a> [account\_name](#output\_account\_name) | The fully-qualified name of the service account. |
| <a name="output_account_unique_id"></a> [account\_unique\_id](#output\_account\_unique\_id) | The unique id of the service account. |
| <a name="output_id"></a> [id](#output\_id) | The iam  id of the service account. |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | An identifier for the  key\_id resource with format |
| <a name="output_key_name"></a> [key\_name](#output\_key\_name) | The name used for this key pair |
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | The private key in JSON format, base64 encoded. This is what you normally get as a file when creating service account keys through the CLI or web console. This is only populated when creating a new key. |
| <a name="output_public_key"></a> [public\_key](#output\_public\_key) | The public key, base64 encoded |
| <a name="output_valid_after"></a> [valid\_after](#output\_valid\_after) | The key can be used after this timestamp. A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. |
| <a name="output_valid_before"></a> [valid\_before](#output\_valid\_before) | The key can be used before this timestamp. A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. |
<!-- END_TF_DOCS -->