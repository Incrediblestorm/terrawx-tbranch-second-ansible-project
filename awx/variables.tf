# Both supplied by central-awx. Pass context to every module call unchanged,
# and use modules.<name> as each call's source.

variable "context" {
  type = any
}

variable "modules" {
  type = any
}
