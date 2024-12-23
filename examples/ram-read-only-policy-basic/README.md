# RAM read-only policy example

Configuration in this directory creates RAM read-only policies.

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

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.220.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ram-read-only-policy-example"></a> [ram-read-only-policy-example](#module\_ram-read-only-policy-example) | ../../modules/ram-read-only-policy | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_description"></a> [description](#output\_description) | The description of the policy |
| <a name="output_id"></a> [id](#output\_id) | The policy's ID |
| <a name="output_policy_document"></a> [policy\_document](#output\_policy\_document) | The policy document |
| <a name="output_policy_json"></a> [policy\_json](#output\_policy\_json) | Policy document as json. Useful if you need document but do not want to create IAM policy itself. For example for CloudSSO Permission Set inline policies |
| <a name="output_policy_name"></a> [policy\_name](#output\_policy\_name) | The name of the policy |
<!-- END_TF_DOCS -->