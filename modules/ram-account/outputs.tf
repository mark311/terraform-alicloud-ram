output "this_caller_identity_account_id" {
  description = "The Alicloud Account ID number of the account that owns or contains the calling entity"
  value       = element(concat(data.alicloud_caller_identity.this.*.id, [""]), 0)
}

output "this_caller_identity_arn" {
  description = "The ARN of the calling identity"
  value       = element(concat(data.alicloud_caller_identity.this.*.arn, [""]), 0)
}

output "this_caller_identity_principal_id" {
  description = "The principal ID of the calling identity"
  value       = element(concat(data.alicloud_caller_identity.this.*.id, [""]), 0)
}

output "this_ram_account_alias" {
  description = "Alias of alicloud account."
  value       = concat(alicloud_ram_account_alias.this.*.account_alias, [""])[0]
}
