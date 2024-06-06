output "names" {
  description = "the names of the users"
  value = sort(values(aws_iam_user.this)[*]["name"])
  
}