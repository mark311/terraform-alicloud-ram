# RAM account example

Configuration in this directory sets Alicloud account alias (also known as Console Account alias) and configures password policy.


# Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.

<!-- 在根目录下运行命令 `terraform-docs markdown . --output-file "./README.md"`，可将所有信息自动填充 -->
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ram_account"></a> [ram\_account](#module\_ram\_account) | ../../modules/ram-account | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_caller_identity_account_id"></a> [this\_caller\_identity\_account\_id](#output\_this\_caller\_identity\_account\_id) | The Alicloud Account ID number of the account that owns or contains the calling entity |
| <a name="output_this_caller_identity_arn"></a> [this\_caller\_identity\_arn](#output\_this\_caller\_identity\_arn) | The ARN of the calling identity |
| <a name="output_this_caller_identity_principal_id"></a> [this\_caller\_identity\_principal\_id](#output\_this\_caller\_identity\_principal\_id) | The principal ID of the calling identity |
| <a name="output_this_ram_account_alias"></a> [this\_ram\_account\_alias](#output\_this\_ram\_account\_alias) | Alias of alicloud account. |
<!-- END_TF_DOCS -->
