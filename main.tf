variable "server_list" {
  default = {
    dev1 = { name = "dev-01", ip = "192.168.1.10" }
    dev2  = { name = "dev-01", ip = "192.168.1.20" }
    prod  = { name = "prod", ip = "192.168.1.30" }
  
  }
}

module "servers" {
  source      = "./modules/my-web-server"
  for_each    = var.server_list

  server_name = each.value.name
  server_ip   = each.value.ip
}