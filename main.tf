module "my_web_servers" {
  source      = "./modules/my-web-server"
  for_each    = var.web_servers

  server_name = each.key
}