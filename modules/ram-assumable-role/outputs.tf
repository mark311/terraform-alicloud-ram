output "this_ram_role_arn" {
  description = "ARN of RAM role"
  value       = element(concat(alicloud_ram_role.this.*.arn, [""]), 0)
}

output "this_ram_role_name" {
  description = "Name of RAM role"
  value       = element(concat(alicloud_ram_role.this.*.name, [""]), 0)
}

output "this_ram_role_id" {
  description = "ID of RAM role"
  value       = element(concat(alicloud_ram_role.this.*.role_id, [""]), 0)
}

output "this_role_requires_mfa" {
  description = "Whether RAM role requires MFA"
  value       = var.role_requires_mfa
}
