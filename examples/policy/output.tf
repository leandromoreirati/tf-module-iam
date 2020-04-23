/* IAM POLICY */
output "iam_policy_id" {
  value       = module.iam_policy.iam_policy_id
  description = "The name of the role."
}
output "iam_policy_arn" {
  value       = module.iam_policy.iam_policy_arn
  description = "The Amazon Resource Name (ARN) specifying the role."
}

output "iam_policy_name" {
  value       = module.iam_policy.iam_policy_name
  description = "The name of the role."
}