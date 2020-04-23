![alt text](https://www.terraform.io/assets/images/logo-hashicorp-3f10732f.svg)

# **tf-module-iam**

Supported Resources:

* [IAM Policy Attachment](https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html)
* [IAM Instance Profile](https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html)
* [IAM Policy](https://www.terraform.io/docs/providers/aws/r/iam_role.html)
* [IAM Role](https://www.terraform.io/docs/providers/aws/r/iam_role.html)

## Terraform Version
terraform 0.12

## Features
Create resources in IAM such as Instance Profile, Roles, Policies making them available for use by instances (instance profile) or another resource that makes use of policies and roles.


## Requirements
  - Terraform
  - AWS Account
  
## Dependencies
  - Not applicable.

## Example of Use
 ------
`iam-instance-profile`:

```hcl
module "instance_profile {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam-instance-profile"
  version = "~> 1.0.0"

  name = "${var.my_team}-${var.product}-${var.environment}"
  role = module.iam_role.iam_role_name
}
```

`iam-policy-attachment`:

```hcl
module "instance_profile {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam-policy-attachment"
  version = "~> 1.0.0"

  role       = module.iam_role.iam_role_name
  policy_arn = module.iam_policy.iam_policy_arn
}
```
 
 `iam-policy`:

```hcl
module "instance_profile {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam-policy"
  version = "~> 1.0.0"

  name        = "${var.my_team}-${var.product}-${var.environment}-policy"
  description = var.description
  path        = var.path
  policy = "${path.module}/policy/policy.json"
}
```
 `iam-role`:

```hcl
module "instance_profile {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam-policy"
  version = "~> 1.0.0"

  name = "${var.my_team}-${var.product}-${var.environment}-role"

  assume_role_policy = "${path.module}/roles/assume_role_policy.json"


  tags = {
    "Name"           = "${var.my_team}-${var.product}"
    "Environment"    = "${var.environment}"

  }
}
```

# External Documentation
 - [AWS IAM Roles](https://amzn.to/38CEDNo)
 - [AWS IAM Policy](https://amzn.to/37Eclka)
 - [AWS Instance Profiles](https://amzn.to/2SQaALq)
 - [AWS Policy Attachement](https://amzn.to/2vLPJkr)

# Created Features
 ------
 - IAM Role
 - IAM Policy
 - IAM Instance Profile
 - IAM Policy attachment