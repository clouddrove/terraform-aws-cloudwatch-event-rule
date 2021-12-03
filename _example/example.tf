provider "aws" {
  region = "eu-west-1"
}

data "aws_caller_identity" "current" {}

module "event-rule" {
  source = "./../"

  name        = "event-rule"
  environment = "test"
  label_order = ["environment", "name"]

  description         = "Event Rule."
  schedule_expression = "cron(0/5 * * * ? *)"

  target_id      = "test"
  arn            = data.aws_caller_identity.current.account_id
  input_template = "\"<instance> is in state <status>\""
  input_paths = {
    instance = "$.detail.instance",
    status   = "$.detail.status",
  }

}
