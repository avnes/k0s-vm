module "valyria_vm" {
    source                  = "github.com/avnes/terraform-libvirt-vm"
    project_name            = var.valyria_vm_project_name
    nodes                   = var.valyria_vm_nodes
    cloud_image_base_url    = var.valyria_vm_cloud_image_base_url
    cloud_image_name        = var.valyria_vm_cloud_image_name
}
