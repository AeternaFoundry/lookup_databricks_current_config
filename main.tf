data "databricks_current_config" "current_config_lookup" {
  for_each = var.current_config_lookup

  account_id = each.value.account_id
  api        = each.value.api
  auth_type  = each.value.auth_type
  cloud      = each.value.cloud
  cloud_type = each.value.cloud_type
  host       = each.value.host
  is_account = each.value.is_account

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

