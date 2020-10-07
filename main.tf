# Managed By : CloudDrove
# Description : This Script is used to create Cloudwatch Alarms.
# Copyright @ CloudDrove. All Right Reserved.

#Module      : Label
#Description : This terraform module is designed to generate consistent label names and tags
#              for resources. You can use terraform-labels to implement a strict naming
#              convention.
module "labels" {
  source = "git::https://github.com/clouddrove/terraform-labels.git?ref=tags/0.13.0"

  enabled     = var.enabled
  name        = var.name
  application = var.application
  environment = var.environment
  label_order = var.label_order
  managedby   = var.managedby
}

#Module      : CLOUDWATCH EVENT
#Description : Terraform module creates Cloudwatch Event on AWS.
resource "aws_cloudwatch_event_rule" "default" {
  count = var.enabled == true ? 1 : 0

  name                = module.labels.id
  description         = var.description
  event_pattern       = var.event_pattern
  schedule_expression = var.schedule_expression
  role_arn            = var.role_arn
  is_enabled          = var.is_enabled
  tags                = module.labels.tags
}

#Module      : CLOUDWATCH EVENT TARGET
#Description : Terraform module creates Cloudwatch Event Target on AWS.
resource "aws_cloudwatch_event_target" "default" {
  count      = var.enabled == true ? 1 : 0
  rule       = aws_cloudwatch_event_rule.default.*.name[0]
  target_id  = var.target_id
  arn        = var.arn
  input_path = var.input_path
  role_arn   = var.target_role_arn
}

