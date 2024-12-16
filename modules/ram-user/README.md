# Creates RAM policy

## Usage

```hcl
module "ram_user" {
      source  = "terraform-alicloud-modules/ram/alicloud//modules/ram-user"
      version = "~> 1.2"
    
    # omitted...
}
```

<!-- 在根目录下运行命令 `terraform-docs markdown . --output-file "./README.md"`，可将所有信息自动填充 -->
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
| [alicloud_ram_access_key.this](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_access_key) | resource |
| [alicloud_ram_access_key.this_no_pgp](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_access_key) | resource |
| [alicloud_ram_login_profile.this](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_login_profile) | resource |
| [alicloud_ram_user.this](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_user) | resource |
| [alicloud_ram_user_policy_attachment.custom](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_user_policy_attachment) | resource |
| [alicloud_ram_user_policy_attachment.system](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/ram_user_policy_attachment) | resource |
| [random_uuid.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comments"></a> [comments](#input\_comments) | Comment of the RAM user | `string` | `""` | no |
| <a name="input_create_ram_access_key"></a> [create\_ram\_access\_key](#input\_create\_ram\_access\_key) | Whether to create RAM access key | `bool` | `true` | no |
| <a name="input_create_ram_user_login_profile"></a> [create\_ram\_user\_login\_profile](#input\_create\_ram\_user\_login\_profile) | Whether to create RAM user login profile | `bool` | `true` | no |
| <a name="input_create_user"></a> [create\_user](#input\_create\_user) | Whether to create the RAM user | `bool` | `true` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Name of the RAM user which for display | `string` | `""` | no |
| <a name="input_email"></a> [email](#input\_email) | Email of the RAM user | `string` | `""` | no |
| <a name="input_force"></a> [force](#input\_force) | This parameter is used for resource destroy | `bool` | `false` | no |
| <a name="input_managed_custom_policy_names"></a> [managed\_custom\_policy\_names](#input\_managed\_custom\_policy\_names) | List of names of managed policies of Custom type to attach to RAM user | `list(string)` | `[]` | no |
| <a name="input_managed_system_policy_names"></a> [managed\_system\_policy\_names](#input\_managed\_system\_policy\_names) | List of names of managed policies of System type to attach to RAM user | `list(string)` | `[]` | no |
| <a name="input_mfa_bind_required"></a> [mfa\_bind\_required](#input\_mfa\_bind\_required) | This parameter indicates whether the MFA needs to be bind when the user first logs in | `bool` | `true` | no |
| <a name="input_mobile"></a> [mobile](#input\_mobile) | Phone number of the RAM user | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the RAM user. If not set, a default name with prefix `ram-user-` will be returned. | `string` | `""` | no |
| <a name="input_password"></a> [password](#input\_password) | Password of the RAM user | `string` | `""` | no |
| <a name="input_password_reset_required"></a> [password\_reset\_required](#input\_password\_reset\_required) | This parameter indicates whether the password needs to be reset when the user first logs in | `bool` | `false` | no |
| <a name="input_pgp_key"></a> [pgp\_key](#input\_pgp\_key) | Either a base-64 encoded PGP public key, or a keybase username in the form | `string` | `""` | no |
| <a name="input_profile"></a> [profile](#input\_profile) | (Deprecated from version 1.3.0)The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD\_PROFILE environment variable. | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | (Deprecated from version 1.3.0)The region used to launch this module resources. | `string` | `""` | no |
| <a name="input_secret_file"></a> [secret\_file](#input\_secret\_file) | The name of file that can save access key id and access key secret | `string` | `""` | no |
| <a name="input_shared_credentials_file"></a> [shared\_credentials\_file](#input\_shared\_credentials\_file) | (Deprecated from version 1.3.0)This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used. | `string` | `""` | no |
| <a name="input_skip_region_validation"></a> [skip\_region\_validation](#input\_skip\_region\_validation) | (Deprecated from version 1.3.0)Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet). | `bool` | `false` | no |
| <a name="input_status"></a> [status](#input\_status) | Status of access key | `string` | `"Active"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_pgp_key"></a> [this\_pgp\_key](#output\_this\_pgp\_key) | PGP key used to encrypt sensitive data for this user (if empty, no encryption) |
| <a name="output_this_ram_access_key_encrypted_secret"></a> [this\_ram\_access\_key\_encrypted\_secret](#output\_this\_ram\_access\_key\_encrypted\_secret) | The access key encrypted secret, base64 encoded |
| <a name="output_this_ram_access_key_id"></a> [this\_ram\_access\_key\_id](#output\_this\_ram\_access\_key\_id) | The access key ID |
| <a name="output_this_ram_access_key_key_fingerprint"></a> [this\_ram\_access\_key\_key\_fingerprint](#output\_this\_ram\_access\_key\_key\_fingerprint) | The fingerprint of the PGP key used to encrypt the secret |
| <a name="output_this_ram_access_key_secret"></a> [this\_ram\_access\_key\_secret](#output\_this\_ram\_access\_key\_secret) | The access key secret |
| <a name="output_this_ram_access_key_status"></a> [this\_ram\_access\_key\_status](#output\_this\_ram\_access\_key\_status) | Active or Inactive. Keys are initially active, but can be made inactive by other means. |
| <a name="output_this_ram_user_name"></a> [this\_ram\_user\_name](#output\_this\_ram\_user\_name) | The user's name |
| <a name="output_this_ram_user_unique_id"></a> [this\_ram\_user\_unique\_id](#output\_this\_ram\_user\_unique\_id) | The unique ID assigned by alicloud |
<!-- END_TF_DOCS -->
