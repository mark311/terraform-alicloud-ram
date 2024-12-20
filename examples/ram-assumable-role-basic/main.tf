data "alicloud_account" "this" {
}

module "ram-assumable-role-example" {
  source = "../../modules/ram-assumable-role"

  create_role = true
  role_name   = "tf-ram-assumable-role-example-basic"
  description = "tf-ram-assumable-role-example-basic"

  role_requires_mfa         = false
  attach_admin_policy       = true
  attach_readonly_policy    = true

  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]
  trusted_role_services = [
    "ecs.aliyuncs.com"
  ]
}
