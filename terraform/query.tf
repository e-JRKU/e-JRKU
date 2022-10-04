  resource "azurerm_monitor_scheduled_query_rules_alert" "adfpipelinefail" {
  name                 = "mypipelinefailure_alert"
  location             = var.LOCATION
  resource_group_name  = var.RESOURCE_GROUP

  action {
    action_group       = [azurerm_monitor_action_group.my_action_group.id]
  }
  
  data_source_id = "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.OperationalInsights/workspaces/${var.LOG_ANALYTICS_WORKSPACE_NAME}"
  description    = "adf pipeline failure"
  enabled        = true
  # display list of all failed pipelines
  query = <<-QUERY
			let pipelines = ADFSandboxPipelineRun 
			| where Status == 'Failed' and Category == "SandboxPipelineRuns";
			let activities = ADFSandboxActivityRun
			| where Category == "SandboxActivityRuns" and Status == "Failed" and ActivityType != "ExecutePipeline" and ActivityType != "IfCondition" and ActivityType != "ForEach" ;
			pipelines
			| join kind = inner activities on $left.RunId == $right.PipelineRunId
			|project DataFactory=substring(tostring(split(ResourceId, "/", 8)), 2, strlen(tostring(split(ResourceId, "/", 8)))-4), TimeGenerated, PipelineName, ActivityName, RunId, Hash=hash_sha256(strcat(PipelineName,Parameters)), Parameters, ErrorMessage, FailureType, Start , End , Status
			|order by TimeGenerated desc
QUERY
  severity    = 0
  frequency   = 5
  time_window = 5 
  trigger {
        operator  = "GreaterThan"
        threshold = 0

     }
}
