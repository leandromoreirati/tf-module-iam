/* For more details on the configuration, visit the official documentation:
https://www.terraform.io/docs/providers/aws/r/iam_role.html
 */

locals {
  files_list = [
    "${md5(file("${path.module}/main.tf"))}",
    "${md5(file("${path.module}/output.tf"))}",
    "${md5(file("${path.module}/variables.tf"))}",
  ]
  current_deployment = "${join("", local.files_list)}"
}

resource "aws_iam_role" "iam_role" {
  name               = var.name
  path               = var.path
  assume_role_policy = file(var.assume_role_policy)


  tags = var.tags
}