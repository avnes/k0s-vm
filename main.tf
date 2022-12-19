module "vm" {
  source       = "github.com/avnes/terraform-libvirt-vm"
  project_name = var.project_name
  network_name = var.network_name
  domain_name  = var.domain_name
  custom_cmd   = var.custom_cmd
  nodes        = var.nodes
}
