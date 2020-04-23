module "attachment" {
  source = "github.com/leandromoreirati/tf-module-iam/modules/iam/iam-attachment-policy"

  role       = module.iam_role.iam_role_name
  policy_arn = module.iam_policy.iam_policy_arn
}