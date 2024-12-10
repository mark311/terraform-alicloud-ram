output "this_ram_role_admin_name" {
  description = "Name of RAM role"
  value       = module.ram_assumable_role_admin.this_ram_role_name
}

output "this_ram_role_admin_arn" {
  description = "ARN of RAM role"
  value       = module.ram_assumable_role_admin.this_ram_role_arn
}

output "this_ram_role_admin_id" {
  description = "ID of RAM role"
  value       = module.ram_assumable_role_admin.this_ram_role_id
}

output "this_admin_role_requires_mfa" {
  description = "Whether RAM role requires MFA"
  value       = module.ram_assumable_role_admin.this_role_requires_mfa
}

output "this_ram_role_with_role_requires_mfa_false_name" {
  description = "Name of RAM role"
  value       = module.ram_assumable_role_with_role_requires_mfa_false.this_ram_role_name
}

output "this_ram_role_with_role_requires_mfa_false_arn" {
  description = "ARN of RAM role"
  value       = module.ram_assumable_role_with_role_requires_mfa_false.this_ram_role_arn
}

output "this_ram_role_with_role_requires_mfa_false_id" {
  description = "ID of RAM role"
  value       = module.ram_assumable_role_with_role_requires_mfa_false.this_ram_role_id
}

output "this_with_role_requires_mfa_false_role_requires_mfa" {
  description = "Whether RAM role requires MFA"
  value       = module.ram_assumable_role_with_role_requires_mfa_false.this_role_requires_mfa
}

output "this_ram_role_custom_name" {
  description = "Name of RAM role"
  value       = module.ram_assumable_role_custom.this_ram_role_name
}

output "this_ram_role_custom_arn" {
  description = "ARN of RAM role"
  value       = module.ram_assumable_role_custom.this_ram_role_arn
}

output "this_ram_role_custom_id" {
  description = "ID of RAM role"
  value       = module.ram_assumable_role_custom.this_ram_role_id
}

output "this_custom_role_requires_mfa" {
  description = "Whether RAM role requires MFA"
  value       = module.ram_assumable_role_custom.this_role_requires_mfa
}

