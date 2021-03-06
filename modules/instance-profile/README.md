# iam-instance-profile
Instance profile allows the management of roles attached to EC2 instances.

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.40 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| name | IAM instance Profile name. | `string` | `""` | no |
| role | The role name to include in the profile. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| instance\_profile\_arn | The instance profile's name. |
| instance\_profile\_id | The instance profile's ID. |
| instance\_profile\_name | The ARN assigned by AWS to the instance profile. |