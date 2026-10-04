# Supplied by central-awx for each branch it manages.

variable "project_id" {
  description = "AWX project pinned to this branch."
  type        = number
}

variable "name_prefix" {
  description = "Prefix for template names: \"\" on the default branch, \"<suffix>-\" for feature/<suffix>."
  type        = string
}

variable "inventory_id" {
  type = number
}

variable "credential_id" {
  type = number
}
