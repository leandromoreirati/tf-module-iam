/* For more details on the configuration, visit the official documentation:
Reference: https://www.terraform.io/docs/providers/aws/r/iam_policy.html
 */

locals {
  files_list = [
    "${md5(file("${path.module}/main.tf"))}",
    "${md5(file("${path.module}/output.tf"))}",
    "${md5(file("${path.module}/variables.tf"))}",
  ]
  current_deployment = "${join("", local.files_list)}"
}

resource "aws_iam_policy" "iam_policy" {
  name        = var.name
  path        = var.path
  description = var.description
  policy      = file(var.policy)
}