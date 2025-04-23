variable "f5_address" {}
variable "f5_username" {}
variable "f5_password" {}
variable "virtual_server_ip" {}
variable "pool_members" {
  type = list(object({
    address = string,
    port    = number
  }))
}
