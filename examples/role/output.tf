/* IAM ROLE */
output "iam_role_id" {
  value = module.iam_role.iam_role_id
}

output "iam_role_arn" {
  value = module.iam_role.iam_role_arn
}

output "iam_role_name" {
  value = module.iam_role.iam_role_name
}

/* IAM POLICY */
output "iam_policy_id" {
  value = module.iam_policy.iam_policy_id
}
output "iam_policy_arn" {
  value = module.iam_policy.iam_policy_arn
}

output "iam_policy_name" {
  value = module.iam_policy.iam_policy_name
}

/* IAM ATTACHMENT POLICY */
output "iam_role_policy_attachment_role" {
  value = module.iam_attachment_policy.iam_role_policy_attachment_role
}

output "iam_role_policy_attachment_policy_arn" {
  value = module.iam_attachment_policy.iam_role_policy_attachment_policy_arn
}

/* IAM INSTANCE PROFILE */
output "instance_profile_name" {
  value = module.iam_instance_profile.instance_profile_name
}

output "instance_profile_id" {
  value = module.iam_instance_profile.instance_profile_id
}

output "instance_profile_arn" {
  value = module.iam_instance_profile.instance_profile_arn
}

/* PRIVATE SUBNET */
output "private_subnet_id" {
  value = module.private_subnet.private_subnet_id
}

output "private_subnet_arn" {
  value = module.private_subnet.private_subnet_arn
}

/* INTERNET GATEWAY */
output "internet_gateway_id" {
  value = module.internet_gateway.internet_gateway_id
}

/* KEY PAIR */
output "key_pair" {
  value = module.key_pair.key_pair
}

/* EC2 */
