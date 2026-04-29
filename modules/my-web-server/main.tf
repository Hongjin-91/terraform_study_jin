variable "server_name" {}

resource "null_resource" "web_servers" {
  provisioner "local-exec" {
    command = "echo 'wlcome ${var.server_name}'"
  }
}