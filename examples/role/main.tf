provider aws {
  region = var.region
}

module "role" {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam/role"

  name = "${var.my_team}-${var.product}-${var.environment}-role"

  assume_role_policy = "${path.module}/polocy/assume_role_policy.json"

  tags = {
    "Name"        = "${var.my_team}-${var.product}-${var.environment}"
    "Environment" = "${var.environment}"
  }
}

module "policy" {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam/policy"

  name        = "${var.my_team}-${var.product}-${var.environment}-policy"
  description = var.description
  path        = var.path
  policy      = "${path.module}/roles/policy.json"
}

module "iam_attachment_policy" {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam/attachment-policy"

  role       = module.iam_role.iam_role_name
  policy_arn = module.iam_policy.iam_policy_arn
}

module "instance_profile" {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam/instance-profile"

  name = "${var.my_team}-${var.product}-${var.environment}"
  role = module.iam_role.iam_role_name
}