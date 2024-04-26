## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| arn | The Amazon Resource Name (ARN) associated with the role that is used for target invocation. | `string` | `""` | no |
| description | The description for the rule. | `string` | `""` | no |
| enabled | Enable event. | `bool` | `true` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| event\_pattern | (schedule\_expression isn't specified) Event pattern described a JSON object. See full documentation of CloudWatch Events and Event Patterns for details. | `any` | `null` | no |
| input\_path | The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. | `string` | `""` | no |
| input\_paths | Key value pairs specified in the form of JSONPath (for example, time = $.time) | `map(any)` | `{}` | no |
| input\_template | Template to customize data sent to the target. Must be valid JSON. To send a string value, the string value must include double quotes. Values must be escaped for both JSON and Terraform, | `string` | `""` | no |
| is\_enabled | Whether the rule should be enabled (defaults to true). | `bool` | `true` | no |
| label\_order | Label order, e.g. `name`,`application`. | `list(any)` | `[]` | no |
| managedby | ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'. | `string` | `"anmol@clouddrove.com"` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| repository | Terraform current module repo | `string` | `"https://github.com/clouddrove/terraform-aws-cloudwatch-event-rule"` | no |
| role\_arn | The Amazon Resource Name (ARN) associated with the role that is used for target invocation. | `string` | `""` | no |
| schedule\_expression | (if event\_pattern isn't specified) The scheduling expression. For example, cron(0 20 \* \* ? \*) or rate(5 minutes). | `any` | `null` | no |
| target\_id | The Amazon Resource Name (ARN) associated with the role that is used for target invocation. | `string` | `""` | no |
| target\_role\_arn | The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if ecs\_target is used. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the cloudwatch metric alarm. |
| id | The ID of the health check. |
| tags | A mapping of tags to assign to the resource. |

