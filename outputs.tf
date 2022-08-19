output "k0s_vm_network" {
  value = module.k0s_vm.network
}

output "k0s_vm_ansible_password" {
  value     = module.k0s_vm.ansible_password
  sensitive = true
}

output "k0s_vm_ssh_private_key_filename" {
  value = module.k0s_vm.ssh_private_key_filename
}

output "k0s_vm_ssh_public_key_filename" {
  value = module.k0s_vm.ssh_public_key_filename
}

output "k0s_vm_ssh_command" {
  value = module.k0s_vm.ssh_command
}
