/* For more details on the configuration, visit the official documentation:
https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html
 */
locals {
  files_list = [
    "${md5(file("${path.module}/main.tf"))}",
    "${md5(file("${path.module}/output.tf"))}",
    "${md5(file("${path.module}/variables.tf"))}",
  ]
  current_deployment = "${join("", local.files_list)}"
}

resource "aws_iam_instance_profile" "instance_profile" {
  name = var.name
  role = var.role
}