# iam-policy
A policy is an object in AWS that, when associated with an identity or resource, defines their permissions.

# Notes
For better code organization, `policy` files must be in the policy directory at the root of the module.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.40 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| description | The description of the policy. | `string` | `""` | no |
| name | IAM Policy name. | `string` | `""` | no |
| path | The path of the policy in IAM. | `string` | `"/"` | no |
| policy | The policy document. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_policy\_arn | The ARN assigned by AWS to this policy. |
| iam\_policy\_id | The policy's ID. |
| iam\_policy\_name | The name of the policy. |