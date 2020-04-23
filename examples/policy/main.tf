module "policy" {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam/policy"

  name        = "${var.my_team}-${var.product}-${var.environment}-policy"
  description = var.description
  path        = var.path
  policy      = "${path.module}/artifacts/policy.json"
}