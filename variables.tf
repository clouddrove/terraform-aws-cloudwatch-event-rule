#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "application" {
  type        = string
  default     = ""
  description = "Application (e.g. `cd` or `clouddrove`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "managedby" {
  type        = string
  default     = "anmol@clouddrove.com"
  description = "ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'."
}

variable "label_order" {
  type        = list
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

#Module      : CLOUDWATCH METRIC ALARM
#Description : Provides a CloudWatch Metric Alarm resource.
variable "enabled" {
  type        = bool
  default     = true
  description = "Enable event."
}

variable "description" {
  type        = string
  default     = ""
  description = "The description for the rule."
}

variable "schedule_expression" {
  default     = null
  description = "(if event_pattern isn't specified) The scheduling expression. For example, cron(0 20 * * ? *) or rate(5 minutes)."
}

variable "event_pattern" {
  default     = null
  description = "(schedule_expression isn't specified) Event pattern described a JSON object. See full documentation of CloudWatch Events and Event Patterns for details."
}

variable "role_arn" {
  type        = string
  default     = ""
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
}

variable "is_enabled" {
  type        = bool
  default     = true
  description = "Whether the rule should be enabled (defaults to true)."
}

variable "target_id" {
  type        = string
  default     = ""
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
}

variable "arn" {
  type        = string
  default     = ""
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
}

variable "input_path" {
  type        = string
  default     = ""
  description = "The value of the JSONPath that is used for extracting part of the matched event when passing it to the target."
}

variable "target_role_arn" {
  type        = string
  default     = ""
  description = "The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if ecs_target is used."
}