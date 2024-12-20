module "ram-assumable-role-example" {
  source = "../../modules/ram-assumable-role"

  create_role = true
  role_name   = "tf-example-ram-assumable-role-custom-trust-policy"
  description = "tf-example-ram-assumable-role-custom-trust-policy"

  role_requires_mfa         = false
  attach_admin_policy       = true

  create_custom_role_trust_policy = true
  custom_role_trust_policy = <<EOF
  {
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Effect": "Allow",
        "Principal": {
            "Service": "fc.aliyuncs.com"
        }
      }
    ],
      "Version": "1"
  }
  EOF

}
