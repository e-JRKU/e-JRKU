
# azurerm_monitor_metric_alert.main:
resource "azurerm_monitor_metric_alert" "metricalert1" {
	auto_mitigate            = true
    description              = "send alert whenever the max ingress of storageaccount exceeds the specified limit"
    enabled                  = true
    frequency                = "PT5M"
    name                     = "storage-account-metricalert-tf"
    resource_group_name      = var.RESOURCE_GROUP
    scopes                   = [
        "/subscriptions/${var.SUBSCRIPTION_ID}/resourcegroups/${var.RESOURCE_GROUP}/providers/Microsoft.Storage/storageAccounts/${var.STORAGE_ACCOUNT}",
    ]
    severity                 = 3
    tags                     = {
        "Project" = "ADF - Valuation Services"
    }
    target_resource_location = "ukwest"
    target_resource_type     = "Microsoft.Storage/storageAccounts"
    window_size              = "PT15M"

    action {
        action_group_id    = azurerm_monitor_action_group.my_action_group.id
    }

    criteria {
        aggregation            = "Maximum"
        metric_name            = "Ingress"
        metric_namespace       = "microsoft.storage/storageaccounts"
        operator               = "GreaterThan"
        skip_metric_validation = false
        threshold              = 30720
    }
}

# azurerm_monitor_metric_alert.main1:
resource "azurerm_monitor_metric_alert" "metricalert2" {
    auto_mitigate            = true
    description              = "If Total factory size(GB unit)exceeds 1GB"
    enabled                  = true
    frequency                = "PT1M"
    name                     = "ADF-metric-alert"
    resource_group_name      = "adf-valuation-dev-ukw-rg"
    scopes                   = [
        "/subscriptions/${var.SUBSCRIPTION_ID}/resourcegroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}",
    ]
    severity                 = 3
    tags                     = {
        "Project" = "ADF - Valuation Services"
    }
    target_resource_location = "ukwest"
    target_resource_type     = "Microsoft.DataFactory/factories"
    window_size              = "PT5M"

    action {
        action_group_id    = azurerm_monitor_action_group.my_action_group.id
    }

    criteria {
        aggregation            = "Total"
        metric_name            = "FactorySizeInGbUnits"
        metric_namespace       = "microsoft.datafactory/factories"
        operator               = "GreaterThan"
        skip_metric_validation = false
        threshold              = 0
    }
}
