module "valyria_vm" {
    source          = "github.com/avnes/terraform-libvirt-vm"
    project_name    = var.valyria_vm_project_name
    nodes           = var.valyria_vm_nodes
}
