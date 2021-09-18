output "valyria_vm_hostnames" {
    value = module.valyria_vm.hostnames
}

output "valyria_vm_ansible_password" {
    value     = module.valyria_vm.ansible_password
    sensitive = true
}
