output "current_config_lookup_id" {
  description = "Map of id values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "current_config_lookup_account_id" {
  description = "Map of account_id values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "current_config_lookup_api" {
  description = "Map of api values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no api are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => v.api if v.api != null && length(v.api) > 0 }
}
output "current_config_lookup_auth_type" {
  description = "Map of auth_type values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no auth_type are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => v.auth_type if v.auth_type != null && length(v.auth_type) > 0 }
}
output "current_config_lookup_cloud" {
  description = "Map of cloud values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no cloud are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "current_config_lookup_cloud_type" {
  description = "Map of cloud_type values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no cloud_type are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => v.cloud_type if v.cloud_type != null && length(v.cloud_type) > 0 }
}
output "current_config_lookup_host" {
  description = "Map of host values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no host are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => v.host if v.host != null && length(v.host) > 0 }
}
output "current_config_lookup_is_account" {
  description = "Map of is_account values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no is_account are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => v.is_account if v.is_account != null }
}
output "current_config_lookup_provider_config" {
  description = "Map of provider_config values across all current_config_lookup, keyed the same as var.current_config_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_current_config.current_config_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

