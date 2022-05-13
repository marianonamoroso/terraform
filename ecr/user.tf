# GITLAB ECR_USER 

locals {
  ecr_policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
}

resource "aws_iam_user" "gitlab_ecr_user" {
  name = "gitlab_ecr_user"

  tags = {
      Name      = "gitlab_ecr_user"
      Type      = "iam_user"
      Resource  = "gitlab-user-ecr"
      Desc      = "user used by gitlab_cicd"
      CreatedBy = "terraform"
      Author    = "mna"
  }
}

resource "aws_iam_user_policy_attachment" "ecr_user_policy_attachment" {
  user       = aws_iam_user.gitlab_ecr_user.name
  policy_arn = local.ecr_policy_arn
}

resource "aws_iam_access_key" "ecr_access_key" {
  user = aws_iam_user.gitlab_ecr_user.name
}