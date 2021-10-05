valyria_vm_project_name         = "valyria"
valyria_vm_cloud_image_base_url = "https://cloud.centos.org/centos/8-stream/x86_64/images"
valyria_vm_cloud_image_name     = "CentOS-Stream-GenericCloud-8-20210603.0.x86_64.qcow2"

valyria_vm_nodes = {
    "master" = {
        name        = "dragonlord",
        vcpu        = 2,
        memory      = "8196",
        disk_pool   = "default",
        disk_size   = "50000000000",
        mac         = "52:54:00:11:11:00",
    },
    # "node01" = {
    #     name        = "aegon",
    #     vcpu        = 1,
    #     memory      = "2048",
    #     disk_pool   = "default",
    #     disk_size   = "50000000000",
    #     mac         = "52:54:00:11:11:01",
    # },
    # "node02" = {
    #     name        = "rhaenys",
    #     vcpu        = 1,
    #     memory      = "2048",
    #     disk_pool   = "default",
    #     disk_size   = "50000000000",
    #     mac         = "52:54:00:11:11:02",
    # },
    # "node03" = {
    #     name        = "visenya",
    #     vcpu        = 1,
    #     memory      = "2048",
    #     disk_pool   = "default",
    #     disk_size   = "50000000000",
    #     mac         = "52:54:00:11:11:03",
    # },
}
