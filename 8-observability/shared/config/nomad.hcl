data_dir  = "/opt/nomad/data"
bind_addr = "0.0.0.0"

# Enable the server
server {
  enabled          = true
  bootstrap_expect = 1
}

consul {
  address = "127.0.0.1:8500"
}

acl {
  enabled = false
}

vault {
  enabled          = true
  address          = "http://active.vault.service.consul:8200"
  token            = "VAULT_TOKEN"
}

# Enable metrics collection
telemetry {
  collection_interval = "1s"
  disable_hostname = true
  prometheus_metrics = true
  publish_allocation_metrics = true
  publish_node_metrics = true
}
