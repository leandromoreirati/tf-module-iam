

/* IAM ATTACHMENT POLICY */
output "iam_role_policy_attachment_role" {
  value       = module.iam_attachment_policy.iam_role_policy_attachment_role
  description = "The role the policy should be applied."
}

output "iam_role_policy_attachment_policy_arn" {
  value       = module.iam_attachment_policy.iam_role_policy_attachment_policy_arn
  description = "The ARN of the policy you want to apply."
}
