output "this_ram_role_name" {
  description = "Name of RAM role"
  value       = module.ram-assumable-role-example.this_ram_role_name
}

output "this_ram_role_arn" {
  description = "ARN of RAM role"
  value       = module.ram-assumable-role-example.this_ram_role_arn
}

output "this_ram_role_id" {
  description = "ID of RAM role"
  value       = module.ram-assumable-role-example.this_ram_role_id
}

output "this_role_requires_mfa" {
  description = "Whether RAM role requires MFA"
  value       = module.ram-assumable-role-example.this_role_requires_mfa
}
