# Create Alicloud Resource Access Management (RAM) User Terraform module

## Usage

```hcl
module "ram_policy" {
    source  = "terraform-alicloud-modules/ram/alicloud//modules/ram-policy"
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
| [alicloud_ram_policy.this](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_policy) | resource |
| [random_uuid.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the RAM policy | `string` | `""` | no |
| <a name="input_document"></a> [document](#input\_document) | Document of the RAM policy | `string` | `""` | no |
| <a name="input_force"></a> [force](#input\_force) | This parameter is used for resource destroy | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the RAM policy. If not set, a default name with prefix `ram-policy-` will be returned. | `string` | `""` | no |
| <a name="input_profile"></a> [profile](#input\_profile) | (Deprecated from version 1.3.0)The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD\_PROFILE environment variable. | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | (Deprecated from version 1.3.0)The region used to launch this module resources. | `string` | `""` | no |
| <a name="input_shared_credentials_file"></a> [shared\_credentials\_file](#input\_shared\_credentials\_file) | (Deprecated from version 1.3.0)This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used. | `string` | `""` | no |
| <a name="input_skip_region_validation"></a> [skip\_region\_validation](#input\_skip\_region\_validation) | (Deprecated from version 1.3.0)Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet). | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_ram_policy_attachment_count"></a> [this\_ram\_policy\_attachment\_count](#output\_this\_ram\_policy\_attachment\_count) | The policy attachment count |
| <a name="output_this_ram_policy_description"></a> [this\_ram\_policy\_description](#output\_this\_ram\_policy\_description) | The policy description |
| <a name="output_this_ram_policy_document"></a> [this\_ram\_policy\_document](#output\_this\_ram\_policy\_document) | The policy document |
| <a name="output_this_ram_policy_name"></a> [this\_ram\_policy\_name](#output\_this\_ram\_policy\_name) | The policy name |
| <a name="output_this_ram_policy_type"></a> [this\_ram\_policy\_type](#output\_this\_ram\_policy\_type) | The policy type |
| <a name="output_this_ram_policy_version"></a> [this\_ram\_policy\_version](#output\_this\_ram\_policy\_version) | The policy document version |
<!-- END_TF_DOCS -->
