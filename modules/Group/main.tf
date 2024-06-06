resource "aws_iam_group" "this" {
  count = length(var.users)
  name = "group${count.index}"

}

resource "aws_iam_group_membership" "name" {
  count = length(var.users)
  name = "tf-testing-group-membership${count.index}"
  #users = [ values(var.users)[count.index]["name"] ]
  users = [ var.users[count.index] ]
  group = aws_iam_group.this[count.index]["name"]
}