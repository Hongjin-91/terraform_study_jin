variable "server_name" {}

resource "local_file" "web_server_info" {
  filename = "${path.module}/../../${var.server_name}.txt"
  content = "echo 'wlcome ${var.server_name}'"
}