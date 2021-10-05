variable "valyria_vm_project_name" {
    type = string
    default = null
    description = "The project name is used for grouping the VMs"
}

variable "valyria_vm_cloud_image_base_url" {
    type = string
    default = null
    description = "The base URL for the cloud image files"
}

variable "valyria_vm_cloud_image_name" {
    type = string
    default = null
    description = "The cloud image file filename"
}

variable "valyria_vm_nodes" {
    type = map
    default = {}
    description = "A map of maps with server details."
}
