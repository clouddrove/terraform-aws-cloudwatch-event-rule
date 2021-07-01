provider "aws" {
  region = "eu-west-1"
}



module "event-rule" {
  source = "./../"

  name        = "event-rule"
  environment = "test"
  label_order = ["environment", "name"]

  description         = "Event Rule."
  schedule_expression = "cron(0/5 * * * ? *)"

  target_id = "test"
  arn       = "arn:aws:lambda:eu-west-1:924144197303:function:hello_world_lambda"

}
