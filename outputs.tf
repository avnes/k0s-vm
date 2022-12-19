output "vm_network" {
  value = module.vm.network
}

output "vm_ansible_password" {
  value     = module.vm.ansible_password
  sensitive = true
}

output "vm_ssh_private_key_filename" {
  value = module.vm.ssh_private_key_filename
}

output "vm_ssh_public_key_filename" {
  value = module.vm.ssh_public_key_filename
}

output "vm_ssh_command" {
  value = module.vm.ssh_command
}
