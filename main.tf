module "valyria_vm" {
    source          = "github.com/avnes/valyria-vm"
    project_name    = var.valyria_vm_project_name
    iso_name        = var.valyria_vm_iso_name
    nodes           = var.valyria_vm_nodes
}
