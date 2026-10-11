variable "current_config_lookup" {
  description = <<EOT
Map of current_config_lookup, attributes below
Optional:
    - account_id
    - api
    - auth_type
    - cloud
    - cloud_type
    - host
    - is_account
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    account_id = optional(string)
    api        = optional(string)
    auth_type  = optional(string)
    cloud      = optional(string)
    cloud_type = optional(string)
    host       = optional(string)
    is_account = optional(bool)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

