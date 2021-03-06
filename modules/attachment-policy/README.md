# iam-attachment-policy
You use policies to define the permissions for an identity (user, group, or role). You can add and remove permissions by attaching and detaching IAM.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.40 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| name | IAM Policy Attachment name. | `string` | `""` | no |
| policy\_arn | The ARN of the policy you want to apply. | `string` | `""` | no |
| role | The role the policy should be applied to. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_role\_policy\_attachment\_policy\_arn | The ARN of the policy you want to apply. |
| iam\_role\_policy\_attachment\_role | The role the policy should be applied. |