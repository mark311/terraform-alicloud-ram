output "this_ram_user_name" {
  description = "The user's name"
  value       = element(concat(alicloud_ram_user.this.*.name, [""]), 0)
}

output "this_ram_user_unique_id" {
  description = "The unique ID assigned by alicloud"
  value       = element(concat(alicloud_ram_user.this.*.id, [""]), 0)
}

output "this_ram_access_key_id" {
  description = "The access key ID"
  value       = element(concat(alicloud_ram_access_key.this.*.id, [""]), 0)
}

output "this_ram_access_key_secret" {
  description = "The access key secret"
  value       = element(concat(alicloud_ram_access_key.this.*.secret, [""]), 0)
  sensitive   = true
}

output "this_ram_access_key_encrypted_secret" {
  description = "The access key encrypted secret, base64 encoded"
  value       = element(concat(alicloud_ram_access_key.this.*.encrypted_secret, [""]), 0)
}

output "this_ram_access_key_key_fingerprint" {
  description = "The fingerprint of the PGP key used to encrypt the secret"
  value       = element(concat(alicloud_ram_access_key.this.*.key_fingerprint, [""]), 0)
}
