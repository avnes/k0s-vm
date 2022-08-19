terraform {
  backend "remote" {
    organization = "avnes"

    workspaces {
      name = "k0s-vm"
    }
  }
}
