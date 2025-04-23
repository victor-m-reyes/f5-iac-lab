f5_address  = "192.168.100.174"
f5_username = "admin"
f5_password = "bingo108"

virtual_server_ip = "192.168.200.100"

pool_members = [
  { address = "192.168.200.11", port = 80 },
  { address = "192.168.200.12", port = 80 }
]
