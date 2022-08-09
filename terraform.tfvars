valyria_vm_project_name         = "valyria"

valyria_vm_nodes = {
    "ctrl-node"     = {
        name        = "volantis",
        vcpu        = 2,
        memory      = "4096",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:00",
    },
    "worker-node01" = {
        name        = "lys",
        vcpu        = 1,
        memory      = "2048",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:01",
    },
    "worker-node02" = {
        name        = "myr",
        vcpu        = 1,
        memory      = "2048",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:02",
    },
    "worker-node03" = {
        name        = "pentos",
        vcpu        = 1,
        memory      = "2048",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:03",
    },
}
