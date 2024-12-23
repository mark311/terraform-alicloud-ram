# RAM policy example

Configuration in this directory creates RAM policies.

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
| <a name="module_ram_policy"></a> [ram\_policy](#module\_ram\_policy) | ../../modules/ram-policy | n/a |

## Resources

No resources.

## Inputs

No inputs.

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
