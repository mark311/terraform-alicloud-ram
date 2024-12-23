output "this_caller_identity_account_id" {
  description = "The Alicloud Account ID number of the account that owns or contains the calling entity"
  value       = module.ram-account-example.this_caller_identity_account_id
}

output "this_caller_identity_arn" {
  description = "The ARN of the calling identity"
  value       = module.ram-account-example.this_caller_identity_arn
}

output "this_caller_identity_principal_id" {
  description = "The principal ID of the calling identity"
  value       = module.ram-account-example.this_caller_identity_principal_id
}

output "this_ram_account_alias" {
  description = "Alias of alicloud account."
  value       = module.ram-account-example.this_ram_account_alias
}
