# OUTPUTS:
# ECR USER GITLAB
output "ecr_user_gitlab_id" {
  value = aws_iam_access_key.ecr_access_key.id
}
output "ecr_user_gitlab_secret" {
  value     = aws_iam_access_key.ecr_access_key.secret
  sensitive = true
}