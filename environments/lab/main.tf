provider "bigip" {
  address  = var.f5_address
  username = var.f5_username
  password = var.f5_password
}

module "f5_ltm" {
  source = "../../modules/f5-ltm"

  pool_members       = var.pool_members
  virtual_server_ip  = var.virtual_server_ip
}
