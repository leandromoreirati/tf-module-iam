output "iam_role_id" {
  value       = aws_iam_role.iam_role.id
  description = "The name of the role."
}

output "iam_role_arn" {
  value       = aws_iam_role.iam_role.arn
  description = "The Amazon Resource Name (ARN) specifying the role."
}

output "iam_role_name" {
  value       = aws_iam_role.iam_role.name
  description = "The name of the role."
}
