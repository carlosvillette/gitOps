resource "aws_iam_user" "this" {
  for_each = var.users
  name = "${each.value.name}"
  force_destroy = true
  tags = {
    tag-key = "user"
  }
}