output "this_caller_identity_account_id" {
  description = "The Alicloud Account ID number of the account that owns or contains the calling entity"
  value       = module.ram_account.this_caller_identity_account_id
}

output "this_caller_identity_arn" {
  description = "The ARN of the calling identity"
  value       = module.ram_account.this_caller_identity_arn
}

output "this_caller_identity_principal_id" {
  description = "The principal ID of the calling identity"
  value       = module.ram_account.this_caller_identity_principal_id
}

output "this_ram_account_alias" {
  description = "Alias of cloud account."
  value       = module.ram_account.this_ram_account_alias
}

