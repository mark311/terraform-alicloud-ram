# Manage RAM account alias and password policy.

## Usage

```hcl
module "ram_account" {
    source  = "terraform-alicloud-modules/ram/alicloud//modules/ram-account"
    version = "~> 1.2"

  # omitted...
}
```

<!-- 在根目录下运行命令 `terraform-docs markdown . --output-file "./README-CN.md"`，可将所有信息自动填充 -->
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_ram_account_alias.this](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_account_alias) | resource |
| [alicloud_ram_account_password_policy.this](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_account_password_policy) | resource |
| [random_uuid.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |
| [alicloud_caller_identity.this](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_alias"></a> [account\_alias](#input\_account\_alias) | Alias of cloud account. If not set, a default name with prefix `ram-account-` will be returned. | `string` | `""` | no |
| <a name="input_create_account_password_policy"></a> [create\_account\_password\_policy](#input\_create\_account\_password\_policy) | Whether to create alicloud RAM account password policy | `bool` | `true` | no |
| <a name="input_get_caller_identity"></a> [get\_caller\_identity](#input\_get\_caller\_identity) | Whether to get alicloud account ID, User ID in which Terraform is authorized | `bool` | `true` | no |
| <a name="input_profile"></a> [profile](#input\_profile) | (Deprecated from version 1.3.0)The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD\_PROFILE environment variable. | `string` | `""` | no |
| <a name="input_ram_account_password_policy"></a> [ram\_account\_password\_policy](#input\_ram\_account\_password\_policy) | defaults from API docs | `map(string)` | `{}` | no |
| <a name="input_region"></a> [region](#input\_region) | (Deprecated from version 1.3.0)The region used to launch this module resources. | `string` | `""` | no |
| <a name="input_shared_credentials_file"></a> [shared\_credentials\_file](#input\_shared\_credentials\_file) | (Deprecated from version 1.3.0)This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used. | `string` | `""` | no |
| <a name="input_skip_region_validation"></a> [skip\_region\_validation](#input\_skip\_region\_validation) | (Deprecated from version 1.3.0)Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet). | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_caller_identity_account_id"></a> [this\_caller\_identity\_account\_id](#output\_this\_caller\_identity\_account\_id) | The Alicloud Account ID number of the account that owns or contains the calling entity |
| <a name="output_this_caller_identity_arn"></a> [this\_caller\_identity\_arn](#output\_this\_caller\_identity\_arn) | The ARN of the calling identity |
| <a name="output_this_caller_identity_principal_id"></a> [this\_caller\_identity\_principal\_id](#output\_this\_caller\_identity\_principal\_id) | The principal ID of the calling identity |
| <a name="output_this_ram_account_alias"></a> [this\_ram\_account\_alias](#output\_this\_ram\_account\_alias) | Alias of alicloud account. |
<!-- END_TF_DOCS -->
