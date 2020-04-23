
output "iam_role_policy_attachment_role" {
  value       = aws_iam_role_policy_attachment.policy_attachment.role
  description = "The role the policy should be applied."
}

output "iam_role_policy_attachment_policy_arn" {
  value       = aws_iam_role_policy_attachment.policy_attachment.policy_arn
  description = "The ARN of the policy you want to apply."
}
