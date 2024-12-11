variable "max_session_duration" {
  description = "Maximum CLI/API session duration in seconds between 3600 and 43200"
  type        = number
  default     = 3600
}

variable "create_role" {
  description = "Whether to create a role"
  type        = bool
  default     = false
}

variable "role_name" {
  description = "RAM role name"
  type        = string
  default     = null
}

variable "role_policy_names" {
  description = "List of names of RAM policies of Custom type to attach to RAM role"
  type        = list(string)
  default     = []
}

variable "role_system_policy_names" {
  description = "List of names of RAM policies of System type to attach to RAM role"
  type        = list(string)
  default     = []
}

variable "force_detach_policies" {
  description = "Whether policies should be detached from this role when destroying"
  type        = bool
  default     = false
}

variable "role_description" {
  description = "RAM Role description"
  type        = string
  default     = ""
}

variable "provider_id" {
  description = "ID of the SAML Provider. Use provider_ids to specify several IDs."
  type        = string
  default     = ""
}

variable "provider_ids" {
  description = "List of SAML Provider IDs"
  type        = list(string)
  default     = []
}
