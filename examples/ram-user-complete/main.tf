locals {
  # A gpg public key generated by GnuPG (gpg), user name is "test",
  # private key is dropped.
  pgp_key = <<EOF
mDMEZ010mhYJKwYBBAHaRw8BAQdAsaX+8F/5oSG0Pnft6ePiLYhUf5Jw6romKlbI
7ed9/ly0BHRlc3SImQQTFgoAQRYhBB0e7T+xAxLh+jPqIS1EA2KOi8W6BQJnTXSa
AhsDBQkFo5qABQsJCAcCAiICBhUKCQgLAgQWAgMBAh4HAheAAAoJEC1EA2KOi8W6
R+0A/3XhzrBhy8dliNN+YGmk0lfNDy8rGIKuXWga2dHyv6aEAQCc4Gs7k5LKlyPm
dEDAN9/ZUnPwwy0fMIIMPijXpYWsB7g4BGdNdJoSCisGAQQBl1UBBQEBB0A0QoKr
A/UJxOy57exEmK7QlNC1ELJNcPYk+sXAeDsragMBCAeIfgQYFgoAJhYhBB0e7T+x
AxLh+jPqIS1EA2KOi8W6BQJnTXSaAhsMBQkFo5qAAAoJEC1EA2KOi8W6ArQBAK0J
4ekPt8EutlxGEBaX84f+lo+Erzy5fbxmTYvDl3GNAQDoJ5BGP7dmseNSkmOCvLsJ
ve0bPJrQ98Xx4nxmCh5HDA==
  EOF
}

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

module "ram-user-example" {
  source = "../../modules/ram-user"

  name                          = "tf-example-ram-user-complete"
  password                      = "123_Xxxxxxxxx"
  create_ram_user_login_profile = true
  create_ram_access_key         = true
  managed_system_policy_names   = ["AliyunECSReadOnlyAccess", "AliyunRAMReadOnlyAccess"]
  managed_custom_policy_names   = [alicloud_ram_policy.custom-policy-1.policy_name]
  pgp_key                       = local.pgp_key
}
