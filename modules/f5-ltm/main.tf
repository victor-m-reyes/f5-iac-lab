resource "bigip_ltm_pool" "web_pool" {
  name = "/Common/web_pool"

  dynamic "member" {
    for_each = var.pool_members
    content {
      address = member.value.address
      port    = member.value.port
    }
  }
}

resource "bigip_ltm_virtual_server" "web_vs" {
  name        = "/Common/web_vs"
  destination = "${var.virtual_server_ip}:80"
  pool        = bigip_ltm_pool.web_pool.name
  profiles    = ["http"]
  source      = "0.0.0.0/0"
}
