project_name = "k0s"
network_name = "bridged-network"

nodes = {
    "ctrl-node"     = {
        name        = "k0s-controlplane",
        vcpu        = 2,
        memory      = "4096",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:00",
    },
    "worker-node01" = {
        name        = "k0s-node01",
        vcpu        = 1,
        memory      = "2048",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:01",
    },
    "worker-node02" = {
        name        = "k0s-node02",
        vcpu        = 1,
        memory      = "2048",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:02",
    },
    "worker-node03" = {
        name        = "k0s-node03",
        vcpu        = 1,
        memory      = "2048",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:03",
    },
}
