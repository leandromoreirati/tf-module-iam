output "iam_policy_id" {
  value       = aws_iam_policy.iam_policy.id
  description = "The policy's ID."

}
output "iam_policy_arn" {
  value       = aws_iam_policy.iam_policy.arn
  description = "The ARN assigned by AWS to this policy."
}

output "iam_policy_name" {
  value       = aws_iam_policy.iam_policy.name
  description = "The name of the policy."
}
