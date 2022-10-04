resource "azurerm_monitor_action_group" "my_action_group" {
  name                = "adf_demo_myactiongroup"
  resource_group_name = var.RESOURCE_GROUP
  short_name          = "agp_name"
  
   email_receiver {
    name              = "sendtodevops"
    email_address     = "xxxxxxxxxxxxxxxxx"
  }
  email_receiver {
	name              = "sendtodataengineer"
	email_address     = "xxxxxxxxxxxxxxxxxxx"
	}
 }
