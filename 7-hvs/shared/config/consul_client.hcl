ui = true
log_level = "INFO"
data_dir = "/opt/consul/data"
bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"
advertise_addr = "IP_ADDRESS"
retry_join = ["RETRY_JOIN"]

acl {
    enabled = false
}

ports {
  grpc = 8502
}