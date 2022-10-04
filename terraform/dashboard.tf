resource "azurerm_portal_dashboard" "my-board" {
  name                = "my-cool-dashboard"
  resource_group_name = var.RESOURCE_GROUP
  location            = var.LOCATION
  tags = {
    source = "terraform"
  }
  dashboard_properties = <<DASH
{
    "lenses": {
      "0": {
        "order": 0,
        "parts": {
          "0": {
            "position": {
              "x": 0,
              "y": 0,
              "colSpan": 12,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/HubsExtension/PartType/MarkdownPart",
              "settings": {
                "content": {
                  "content": "# Azure Data Factory\n",
                  "title": "",
                  "subtitle": "",
                  "markdownSource": 1,
                  "markdownUri": ""
                }
              }
            }
          },
          "1": {
            "position": {
              "x": 13,
              "y": 0,
              "colSpan": 5,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "value": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.Storage/storageAccounts/${var.STORAGE_ACC}"
                          },
                          "name": "Ingress",
                          "aggregationType": 1,
                          "namespace": "microsoft.storage/storageaccounts",
                          "metricVisualization": {
                            "displayName": "Ingress"
                          }
                        }
                      ],
                      "title": "StorageAccount_Metric",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        }
                      },
                      "timespan": {
                        "relative": {
                          "duration": 86400000
                        },
                        "showUTCTime": false,
                        "grain": 1
                      }
                    }
                  },
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.Storage/storageAccounts/${var.STORAGE_ACC}"
                          },
                          "name": "Ingress",
                          "aggregationType": 1,
                          "namespace": "microsoft.storage/storageaccounts",
                          "metricVisualization": {
                            "displayName": "Ingress"
                          }
                        }
                      ],
                      "title": "StorageAccount_Metric",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              },
              "filters": {
                "MsPortalFx_TimeRange": {
                  "model": {
                    "format": "local",
                    "granularity": "auto",
                    "relative": "1440m"
                  }
                }
              }
            }
          },
          "2": {
            "position": {
              "x": 0,
              "y": 1,
              "colSpan": 4,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "value": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "PipelineSucceededRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Succeeded pipeline runs metrics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "PipelineFailedRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Failed pipeline runs metrics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "PipelineCancelledRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Cancelled pipeline runs metrics"
                          }
                        }
                      ],
                      "title": "ADFPipelineRuns",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        }
                      },
                      "timespan": {
                        "relative": {
                          "duration": 86400000
                        },
                        "showUTCTime": false,
                        "grain": 1
                      }
                    }
                  },
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "PipelineSucceededRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Succeeded pipeline runs metrics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "PipelineFailedRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Failed pipeline runs metrics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "PipelineCancelledRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Cancelled pipeline runs metrics"
                          }
                        }
                      ],
                      "title": "ADFPipelineRuns",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              },
              "filters": {
                "MsPortalFx_TimeRange": {
                  "model": {
                    "format": "local",
                    "granularity": "auto",
                    "relative": "1440m"
                  }
                }
              }
            }
          },
          "3": {
            "position": {
              "x": 4,
              "y": 1,
              "colSpan": 4,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "ActivityCancelledRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Cancelled activity runs metrics",
                            "resourceDisplayName": "${var.DATAFACTORY_NAME}"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "ActivityFailedRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Failed activity runs metrics",
                            "resourceDisplayName": "${var.DATAFACTORY_NAME}"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "ActivitySucceededRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Succeeded activity runs metrics",
                            "resourceDisplayName": "${var.DATAFACTORY_NAME}"
                          }
                        }
                      ],
                      "title": "ADFActivityRuns",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              }
            }
          },
          "4": {
            "position": {
              "x": 8,
              "y": 1,
              "colSpan": 4,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "value": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "TriggerCancelledRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Cancelled trigger runs metrics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "TriggerFailedRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Failed trigger runs metrics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "TriggerSucceededRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Succeeded trigger runs metrics"
                          }
                        }
                      ],
                      "title": "ADFTriggerRuns",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        }
                      },
                      "timespan": {
                        "relative": {
                          "duration": 86400000
                        },
                        "showUTCTime": false,
                        "grain": 1
                      }
                    }
                  },
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "TriggerCancelledRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Cancelled trigger runs metrics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "TriggerFailedRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Failed trigger runs metrics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "TriggerSucceededRuns",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Succeeded trigger runs metrics"
                          }
                        }
                      ],
                      "title": "ADFTriggerRuns",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              },
              "filters": {
                "MsPortalFx_TimeRange": {
                  "model": {
                    "format": "local",
                    "granularity": "auto",
                    "relative": "1440m"
                  }
                }
              }
            }
          },
          "5": {
            "position": {
              "x": 13,
              "y": 4,
              "colSpan": 8,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/HubsExtension/PartType/MarkdownPart",
              "settings": {
                "content": {
                  "content": "# LogAnalyticsWorkspace",
                  "title": "",
                  "subtitle": "",
                  "markdownSource": 1,
                  "markdownUri": ""
                }
              },
              "partHeader": {
                "title": "LogAnalyticsWorkspace",
                "subtitle": "Ingestion Over Time (MB)"
              }
            }
          },
          "6": {
            "position": {
              "x": 0,
              "y": 5,
              "colSpan": 4,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "resourceTypeMode",
                  "isOptional": true
                },
                {
                  "name": "ComponentId",
                  "isOptional": true
                },
                {
                  "name": "Scope",
                  "value": {
                    "resourceIds": [
                      "/subscriptions/${var.SUBSCRIPTION_ID}/resourcegroups/${var.RESOURCE_GROUP}/providers/microsoft.operationalinsights/workspaces/${var.LOG_ANALYTICS_WORKSPACE_NAME}"
                    ]
                  },
                  "isOptional": true
                },
                {
                  "name": "PartId",
                  "value": "9d7b62ed-20e1-4031-bb13-ddab7f4b615f",
                  "isOptional": true
                },
                {
                  "name": "Version",
                  "value": "2.0",
                  "isOptional": true
                },
                {
                  "name": "TimeRange",
                  "isOptional": true
                },
                {
                  "name": "DashboardId",
                  "isOptional": true
                },
                {
                  "name": "DraftRequestParameters",
                  "isOptional": true
                },
                {
                  "name": "Query",
                  "value": "ADFSandboxPipelineRun \n| where TimeGenerated > ago(3d) \n| where Category == \"SandboxPipelineRuns\" \n| summarize Count = count() by Status",
                  "isOptional": true
                },
                {
                  "name": "ControlType",
                  "value": "FrameControlChart",
                  "isOptional": true
                },
                {
                  "name": "SpecificChart",
                  "value": "StackedBar",
                  "isOptional": true
                },
                {
                  "name": "PartTitle",
                  "value": "Analytics",
                  "isOptional": true
                },
                {
                  "name": "PartSubTitle",
                  "value": "${var.LOG_ANALYTICS_WORKSPACE_NAME}",
                  "isOptional": true
                },
                {
                  "name": "Dimensions",
                  "value": {
                    "xAxis": {
                      "name": "Status",
                      "type": "string"
                    },
                    "yAxis": [
                      {
                        "name": "Count",
                        "type": "long"
                      }
                    ],
                    "splitBy": [],
                    "aggregation": "Sum"
                  },
                  "isOptional": true
                },
                {
                  "name": "LegendOptions",
                  "value": {
                    "isEnabled": true,
                    "position": "Bottom"
                  },
                  "isOptional": true
                },
                {
                  "name": "IsQueryContainTimeRange",
                  "value": true,
                  "isOptional": true
                }
              ],
              "type": "Extension/Microsoft_OperationsManagementSuite_Workspace/PartType/LogsDashboardPart",
              "settings": {
                "content": {
                  "PartTitle": "Analytics-Pipelines"
                }
              },
              "partHeader": {
                "title": "ADFSandboxPipelineRun Status",
                "subtitle": ""
              }
            }
          },
          "7": {
            "position": {
              "x": 4,
              "y": 5,
              "colSpan": 4,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "value": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "FactorySizeInGbUnits",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Total factory size (GB unit)",
                            "resourceDisplayName": "${var.DATAFACTORY_NAME}"
                          }
                        }
                      ],
                      "title": "Sum Total factory size (GB unit) for ${var.DATAFACTORY_NAME}",
                      "titleKind": 1,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        }
                      },
                      "timespan": {
                        "relative": {
                          "duration": 2592000000
                        },
                        "showUTCTime": false,
                        "grain": 1
                      }
                    }
                  },
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.DataFactory/factories/${var.DATAFACTORY_NAME}"
                          },
                          "name": "FactorySizeInGbUnits",
                          "aggregationType": 1,
                          "namespace": "microsoft.datafactory/factories",
                          "metricVisualization": {
                            "displayName": "Total factory size (GB unit)",
                            "resourceDisplayName": "${var.DATAFACTORY_NAME}"
                          }
                        }
                      ],
                      "title": "Total factory size (GB unit) for ${var.DATAFACTORY_NAME}",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              },
              "filters": {
                "MsPortalFx_TimeRange": {
                  "model": {
                    "format": "local",
                    "granularity": "auto",
                    "relative": "43200m"
                  }
                }
              }
            }
          },
          "8": {
            "position": {
              "x": 8,
              "y": 5,
              "colSpan": 4,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/HubsExtension/PartType/MarkdownPart",
              "settings": {
                "content": {
                  "content": "# Azure Function App",
                  "title": "",
                  "subtitle": "",
                  "markdownSource": 1,
                  "markdownUri": ""
                }
              }
            }
          },
          "9": {
            "position": {
              "x": 13,
              "y": 5,
              "colSpan": 8,
              "rowSpan": 5
            },
            "metadata": {
              "inputs": [
                {
                  "name": "resourceTypeMode",
                  "isOptional": true
                },
                {
                  "name": "ComponentId",
                  "isOptional": true
                },
                {
                  "name": "Scope",
                  "value": {
                    "resourceIds": [
                      "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/Microsoft.OperationalInsights/workspaces/${var.LOG_ANALYTICS_WORKSPACE_NAME}"
                    ]
                  },
                  "isOptional": true
                },
                {
                  "name": "PartId",
                  "value": "15a238b5-5b4b-4766-bc15-92a32cf14dda",
                  "isOptional": true
                },
                {
                  "name": "Version",
                  "value": "2.0",
                  "isOptional": true
                },
                {
                  "name": "TimeRange",
                  "value": "P7D",
                  "isOptional": true
                },
                {
                  "name": "DashboardId",
                  "isOptional": true
                },
                {
                  "name": "DraftRequestParameters",
                  "isOptional": true
                },
                {
                  "name": "Query",
                  "value": "Usage\r| project TimeGenerated, DataType, Quantity\r| where DataType in ('AppPerformanceCounters','AppTraces','Alert','ADFSandboxActivityRun','AzureMetrics')\r| summarize IngestionVolumeMB=sum(Quantity) by bin(TimeGenerated, 3h), DataType  \n",
                  "isOptional": true
                },
                {
                  "name": "ControlType",
                  "value": "FrameControlChart",
                  "isOptional": true
                },
                {
                  "name": "SpecificChart",
                  "value": "StackedColumn",
                  "isOptional": true
                },
                {
                  "name": "PartTitle",
                  "value": "Analytics",
                  "isOptional": true
                },
                {
                  "name": "PartSubTitle",
                  "value": "${var.LOG_ANALYTICS_WORKSPACE_NAME}",
                  "isOptional": true
                },
                {
                  "name": "Dimensions",
                  "value": {
                    "xAxis": {
                      "name": "TimeGenerated",
                      "type": "datetime"
                    },
                    "yAxis": [
                      {
                        "name": "IngestionVolumeMB",
                        "type": "real"
                      }
                    ],
                    "splitBy": [
                      {
                        "name": "DataType",
                        "type": "string"
                      }
                    ],
                    "aggregation": "Sum"
                  },
                  "isOptional": true
                },
                {
                  "name": "LegendOptions",
                  "value": {
                    "isEnabled": true,
                    "position": "Bottom"
                  },
                  "isOptional": true
                },
                {
                  "name": "IsQueryContainTimeRange",
                  "value": false,
                  "isOptional": true
                }
              ],
              "type": "Extension/Microsoft_OperationsManagementSuite_Workspace/PartType/LogsDashboardPart",
              "settings": {},
              "partHeader": {
                "title": "LogAnalyticsWorkspace_Usage",
                "subtitle": "Ingestion Over Time (MB)"
              }
            }
          },
          "10": {
            "position": {
              "x": 8,
              "y": 6,
              "colSpan": 2,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [
                {
                  "name": "ResourceId",
                  "value": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/microsoft.insights/components/${var.APP_INSIGHT_NAME}"
                }
              ],
              "type": "Extension/AppInsightsExtension/PartType/CuratedBladeFailuresPinnedPart",
              "isAdapter": true,
              "asset": {
                "idInputName": "ResourceId",
                "type": "ApplicationInsights"
              },
              "deepLink": "#@ctazure.co.uk/resource/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/microsoft.insights/components/${var.APP_INSIGHT_NAME}/failures"
            }
          },
          "11": {
            "position": {
              "x": 10,
              "y": 6,
              "colSpan": 2,
              "rowSpan": 2
            },
            "metadata": {
              "inputs": [
                {
                  "name": "ResourceId",
                  "value": "/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/microsoft.insights/components/${var.APP_INSIGHT_NAME}"
                }
              ],
              "type": "Extension/AppInsightsExtension/PartType/CuratedBladePerformancePinnedPart",
              "isAdapter": true,
              "asset": {
                "idInputName": "ResourceId",
                "type": "ApplicationInsights"
              },
              "deepLink": "#@ctazure.co.uk/resource/subscriptions/${var.SUBSCRIPTION_ID}/resourceGroups/${var.RESOURCE_GROUP}/providers/microsoft.insights/components/${var.APP_INSIGHT_NAME}/performance"
            }
          }
        }
      }
    },
    "metadata": {
      "model": {
        "timeRange": {
          "value": {
            "relative": {
              "duration": 24,
              "timeUnit": 1
            }
          },
          "type": "MsPortalFx.Composition.Configuration.ValueTypes.TimeRange"
        },
        "filterLocale": {
          "value": "en-us"
        },
        "filters": {
          "value": {
            "MsPortalFx_TimeRange": {
              "model": {
                "format": "local",
                "granularity": "auto",
                "relative": "3d"
              },
              "displayCache": {
                "name": "Local Time",
                "value": "Past 3 days"
              },
              "filteredPartIds": [
                "StartboardPart-MonitorChartPart-1418b8fd-5df0-4c20-80d1-866ccbfc87c0",
                "StartboardPart-MonitorChartPart-1418b8fd-5df0-4c20-80d1-866ccbfc87c2",
                "StartboardPart-MonitorChartPart-1418b8fd-5df0-4c20-80d1-866ccbfc87c4",
                "StartboardPart-MonitorChartPart-1418b8fd-5df0-4c20-80d1-866ccbfc87c6",
                "StartboardPart-LogsDashboardPart-1418b8fd-5df0-4c20-80d1-866ccbfc87ca",
                "StartboardPart-MonitorChartPart-1418b8fd-5df0-4c20-80d1-866ccbfc87cc",
                "StartboardPart-LogsDashboardPart-1418b8fd-5df0-4c20-80d1-866ccbfc87d4"
              ]
            }
          }
        }
      }
    }
  }
  DASH
}  
