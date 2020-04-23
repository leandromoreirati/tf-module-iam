module "profile" {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam/iam-instance-profile"

  name = "${var.my_team}-${var.product}-${var.environment}-instance-profile"
  role = module.iam_role.iam_role_name
}