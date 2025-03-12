data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "random_password" "pass" {
  length           = 16
  special          = true
  min_upper        = 1
  min_lower        = 1
  min_numeric      = 2
  min_special      = 2
  override_special = "!#$%&*()-_+[]{}<>?"
}