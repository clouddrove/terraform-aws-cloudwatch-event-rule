provider "aws" {
  region = "eu-west-1"
}

module "event-rule" {
  source = "git::https://github.com/clouddrove/terraform-aws-cloudwatch-event-rule.git?ref=tags/0.12.0"

  name        = "event-rule"
  application = "clouddrove"
  environment = "test"
  label_order = ["environment", "name", "application"]

  description         = "Event Rule."
  schedule_expression = "cron(0/5 * * * ? *)"

  target_id = "test"
  arn       = "arn:aws:lambda:eu-west-1:866067750630:function:test"
}
