# IAM Instance Profile
Creates the resource [AWS Instance Profiles](https://amzn.to/2SQaALq) making it available for use by the instance.

## Providers

No provider.

# Usage

```bash
$ terraform init
$ terraform plan 
$ terraform apply
```

Run `terraform destroy` when you want to remove this feature.

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| instance\_profile\_arn | The ARN assigned by AWS to the instance profile. |
| instance\_profile\_id | The instance profile's ID. |
| instance\_profile\_name | The instance profile's name. |

