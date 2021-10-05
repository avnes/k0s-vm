output "valyria_vm_network" {
    value = module.valyria_vm.network
}

output "valyria_vm_ansible_password" {
    value     = module.valyria_vm.ansible_password
    sensitive = true
}

output "valyria_vm_ssh_private_key_filename" {
    value     = module.valyria_vm.ssh_private_key_filename
}

output "valyria_vm_ssh_public_key_filename" {
    value     = module.valyria_vm.ssh_public_key_filename
}
