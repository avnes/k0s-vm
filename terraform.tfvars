project_name = "odin"
network_name = "bridged-network"

nodes = {
  "ctrl-node" = {
    name      = "odin.anyops.site",
    vcpu      = 1,
    memory    = "4096",
    disk_pool = "default",
    disk_size = "50000000000",
    mac       = "52:54:00:11:11:00",
  },
  "worker-node01" = {
    name      = "hugin.anyops.site",
    vcpu      = 2,
    memory    = "4096",
    disk_pool = "default",
    disk_size = "50000000000",
    mac       = "52:54:00:11:11:01",
  },
  "worker-node02" = {
    name      = "munin.anyops.site",
    vcpu      = 2,
    memory    = "4096",
    disk_pool = "default",
    disk_size = "50000000000",
    mac       = "52:54:00:11:11:02",
  },
}
