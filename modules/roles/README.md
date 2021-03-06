# iam-role
An IAM role is an IAM identity that you can create in your account that has specific permissions.

# Notes
For better code organization, `roles` files must be in the roles directory at the root of the module.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.40 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| assume\_role\_policy | The policy that grants an entity permission to assume the role. | `string` | `""` | no |
| name | IAM Role name. | `string` | `""` | no |
| tags | Setting tags for the feature | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| iam\_role\_arn | The Amazon Resource Name (ARN) specifying the role. |
| iam\_role\_id | The name of the role. |
| iam\_role\_name | The name of the role. |