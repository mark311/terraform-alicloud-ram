data "alicloud_account" "this" {
}

#########################
# Prepare 2 RAM users
#########################
module "prepared-user-1" {
  source = "../../modules/ram-user"

  name = "tf-example-RGWARP-basic-prepared-user-1"

  create_ram_user_login_profile = false
  create_ram_access_key         = false
  password                      = "123_Xxxxxxxxx"
}

module "prepared-user-2" {
  source = "../../modules/ram-user"

  name = "tf-example-RGWARP-basic-prepared-user-2"

  create_ram_user_login_profile = false
  create_ram_access_key         = false
  password                      = "123_Xxxxxxxxx"
}

######################################
# Prepare several ram assumable roles
######################################
module "prepared-roles" {
  source = "../../modules/ram-assumable-roles"

  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]
  trusted_role_services = [
    "ecs.aliyuncs.com"
  ]

  create_admin_role     = true
  create_readonly_role  = true

  admin_role_name       = "tf-example-RGWARP-basic-prepared-roles-1"
  readonly_role_name    = "tf-example-RGWARP-basic-prepared-roles-2"
}

#################################################################
# Create a ram group where user1 and user2 are allowed to assume
# the prepared roles.
#################################################################
module "ram-group-with-assumable-roles-policy-example" {
  source = "../../modules/ram-group-with-assumable-roles-policy"

  group_name      = "tf-example-RGWARP-basic"
  policy_name     = "AliyunOSSFullAccess"

  assumable_roles = [
    module.prepared-roles.this_admin_ram_role_arn,
    module.prepared-roles.this_readonly_ram_role_arn,
  ]

  user_names = [
    module.prepared-user-1.this_ram_user_name,
    module.prepared-user-2.this_ram_user_name,
  ]
}
