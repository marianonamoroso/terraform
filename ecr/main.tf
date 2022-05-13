# ECR REPOSITORY
resource "aws_ecr_repository" "resume" {
  name                 = "resume"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
      Name      = "resume"
      Type      = "repository"
      Resource  = "ecr"
      CreatedBy = "terraform"
      Author    = "mna"
  }
}