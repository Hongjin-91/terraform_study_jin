variable "web_servers" {
  default = {
    "dev1" = { env = "dev"}
    "dev2" = { env = "dev"}
    "prod" = { env = "prod"}
  }
}