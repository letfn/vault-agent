pi_file = "/vault/pid"

exit_after_auth = false

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = true
}

cache {
  use_auto_auth_token = false
}
