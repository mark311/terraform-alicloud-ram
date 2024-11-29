resource "random_integer" "default" {
  min = 10000
  max = 99999
}

resource "alicloud_ram_policy" "custom-policy-1" {
  policy_name     = "ram-user-example-policy-${random_integer.default.result}"
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

#########################################
# RAM user, login profile and access key
#########################################
module "ram_user" {
  source = "../../modules/ram-user"

  name                          = "terraformtest0"
  password                      = "123_Xxxxxxxxx"
  create_ram_user_login_profile = true
  create_ram_access_key         = true
}

#########################################
# RAM user with attached policies
#########################################
module "ram_user_with_attached_policies" {
  source = "../../modules/ram-user"

  name                          = "ram-user-with-attached-policies"
  password                      = "123_Xxxxxxxxx"
  create_ram_user_login_profile = false
  create_ram_access_key         = false
  system_policy_names           = ["AliyunECSReadOnlyAccess", "AliyunRAMReadOnlyAccess"]
  custom_policy_names           = [alicloud_ram_policy.custom-policy-1.policy_name]
}

