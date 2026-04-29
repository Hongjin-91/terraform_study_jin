variable "server_name" {}
variable "server_ip" {}

resource "null_resource" "web" {
  provisioner "local-exec" {
    command = "echo '모듈에서 생성 : ${var.server_name} (IP: ${var.server_ip})'"
  }
}