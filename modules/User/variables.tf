variable "users" {
  description = "the names of the users"
  type = map(object({
    name = string
  }))
}