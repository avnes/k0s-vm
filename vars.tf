variable "valyria_vm_project_name" {
    type = string
    default = null
    description = "The project name is used for grouping the VMs"
}

variable "valyria_vm_iso_name" {
    type = string
    default = null
    description = "The ISO file filename"
}

variable "valyria_vm_nodes" {
    type = map
    default = {}
    description = "A map of maps with server details."
}
