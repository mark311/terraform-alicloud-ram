######################
# ram assumable roles
######################
data "alicloud_account" "this" {
}

module "ram_assumable_roles" {
  source = "../../modules/ram-assumable-roles"

  create_admin_role          = true
  admin_role_name            = "admin2"
  create_poweruser_role      = true
  poweruser_role_name        = "OSS-and-NASR"
  create_readonly_role       = true
  readonly_role_name         = "readonly2"

  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]
  trusted_role_services = [
    "ecs.aliyuncs.com"
  ]
  poweruser_role_policy_names = [
    "AliyunOSSFullAccess",
    "AliyunNASReadOnlyAccess"
  ]
}

module "ram_assumable_roles_with_none_role_created" {
  source = "../../modules/ram-assumable-roles"

  create_admin_role          = false
  create_poweruser_role      = false
  create_readonly_role       = false

  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]
  trusted_role_services = [
    "ecs.aliyuncs.com"
  ]
  poweruser_role_policy_names = [
    "AliyunOSSFullAccess",
    "AliyunNASReadOnlyAccess"
  ]
}

module "ram_assumable_roles_with_max_session_duration" {
  source = "../../modules/ram-assumable-roles"

  create_admin_role          = true
  create_poweruser_role      = true
  create_readonly_role       = true

  max_session_duration   = 7200
  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]
  trusted_role_services = [
    "ecs.aliyuncs.com"
  ]
  poweruser_role_policy_names = [
    "AliyunOSSFullAccess",
    "AliyunNASReadOnlyAccess"
  ]
}
