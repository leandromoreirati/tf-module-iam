# IAM Attachement Policy Example
This directory sets up a policy attachment [AWS Policy Attachement](https://amzn.to/2vLPJkr).

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
| iam\_role\_policy\_attachment\_policy\_arn | The ARN of the policy you want to apply. |
| iam\_role\_policy\_attachment\_role | The role the policy should be applied. |