###############################
# RAM assumable role for admin
###############################
data "alicloud_account" "this" {
}

data "alicloud_ram_policies" "admin" {
  name_regex = "AdministratorAccess"
  type       = "System"
}

module "ram_assumable_role_admin" {
  source = "../../modules/ram-assumable-role"

  create_role = true
  role_name   = "admin1"
  description = "test ram-assumable-role-admin"

  role_requires_mfa = true

  attach_admin_policy    = true
  admin_role_policy_name = concat(data.alicloud_ram_policies.admin.*.policies.0.policy_name, [""])[0]
  action                 = "sts:AssumeRole"
  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]
  trusted_role_services = [
    "ecs.aliyuncs.com"
  ]
}

###############################
# RAM assumable role with custom policies
###############################

resource "random_integer" "default" {
  min = 10000
  max = 99999
}
resource "alicloud_ram_policy" "default" {
  policy_name     = "examplepolicy${random_integer.default.result}"
  policy_document = <<DEFINITION
	{
		"Version": "1",
		"Statement": [
		  {
			"Action": "mns:*",
			"Resource": "*",
			"Effect": "Allow"
		  }
		]
	  }
	DEFINITION
}

module "ram_assumable_role_custom" {
  source = "../../modules/ram-assumable-role"

  create_role       = true
  role_name         = "custom2"
  description       = "test ram-assumable-role-custom"
  role_requires_mfa = true
  action            = "sts:AssumeRole"

  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]
  trusted_role_services = [
    "ecs.aliyuncs.com"
  ]

  custom_role_policy_names = [
    alicloud_ram_policy.default.policy_name
  ]
}

###############################
# RAM assumable role with max_session_duration
###############################
module "ram_assumable_role_with_max_session_duration" {
  source = "../../modules/ram-assumable-role"

  create_role = true
  role_name   = "role-with-duration-7200"
  description = "test RAM assumable role with max_session_duration "

  action                 = "sts:AssumeRole"
  max_session_duration   = 7200

  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]
}

###############################
# RAM assumable role with user-specified system policy
###############################
module "ram_assumable_role_with_system_policy" {
  source = "../../modules/ram-assumable-role"

  create_role = true
  role_name   = "role-with-system-policy"
  description = "test RAM assumable role with user-specified system policy"

  action                 = "sts:AssumeRole"

  trusted_role_arns = [
    "acs:ram::${data.alicloud_account.this.id}:root"
  ]

  system_role_policy_names = [
    "AliyunECSReadOnlyAccess"
  ]
}
