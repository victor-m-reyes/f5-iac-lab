variable "pool_members" {
  type = list(object({
    address = string
    port    = number
  }))
}

variable "virtual_server_ip" {
  type = string
}
