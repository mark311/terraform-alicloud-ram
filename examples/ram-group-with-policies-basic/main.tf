resource "alicloud_ram_policy" "custom-policy-1" {
  policy_name     = "tf-example-RGWP-basic-custom-policy-1"
  policy_document = <<EOF
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
	EOF
}

#########################
# Prepare 2 RAM users
#########################
module "prepared-user-1" {
  source = "../../modules/ram-user"

  name = "tf-example-RGWP-basic-prepared-user-1"

  create_ram_user_login_profile = false
  create_ram_access_key         = false
  password                      = "123_Xxxxxxxxx"
}

module "prepared-user-2" {
  source = "../../modules/ram-user"

  name = "tf-example-RGWP-basic-prepared-user-2"

  create_ram_user_login_profile = false
  create_ram_access_key         = false
  password                      = "123_Xxxxxxxxx"
}

################################
# RAM group with managed policies attached
################################
module "ram-group-with-policies-example" {
  source = "../../modules/ram-group-with-policies"

  name = "tf-example-RGWP-basic"

  managed_system_policy_names = ["AliyunECSReadOnlyAccess", "AliyunOSSReadOnlyAccess"]
  managed_custom_policy_names = [alicloud_ram_policy.custom-policy-1.policy_name]

  custom_group_policies = [
    {
      name   = "tf-example-RGWP-basic-custom-policy-2"
      document = <<EOF
	{
		"Version": "1",
		"Statement": [
		  {
			"Action": "rds:*",
			"Resource": "*",
			"Effect": "Allow"
		  }
		]
	  }
	EOF
    },
  ]

  user_names = [
    module.prepared-user-1.this_ram_user_name,
    module.prepared-user-2.this_ram_user_name,
  ]
}
