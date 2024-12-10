output "this_ram_user_name" {
  description = "The user's name"
  value       = module.ram_user.this_ram_user_name
}

output "this_ram_user_unique_id" {
  description = "The unique ID assigned by Alibaba Cloud"
  value       = module.ram_user.this_ram_user_unique_id
}

output "this_ram_access_key_id" {
  description = "The unique ID assigned by Alibaba Cloud"
  value       = module.ram_user_with_encrypted_secret.this_ram_access_key_id
}

output "this_ram_access_key_secret" {
  description = "The access key secret"
  value       = module.ram_user_with_encrypted_secret.this_ram_access_key_secret
  sensitive   = true
}

output "this_ram_access_key_encrypted_secret" {
  description = "The access key encrypted secret, base64 encoded"
  value       = module.ram_user_with_encrypted_secret.this_ram_access_key_encrypted_secret
}

output "this_ram_access_key_key_fingerprint" {
  description = "The fingerprint of the PGP key used to encrypt the secret"
  value       = module.ram_user_with_encrypted_secret.this_ram_access_key_key_fingerprint
}

output "this_ram_access_key_status" {
  description = "Active or Inactive. Keys are initially active, but can be made inactive by other means."
  value       = module.ram_user_with_encrypted_secret.this_ram_access_key_status
}

output "this_pgp_key" {
  description = "PGP key used to encrypt sensitive data for this user (if empty, no encryption)"
  value       = module.ram_user_with_encrypted_secret.this_pgp_key
}
