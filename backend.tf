terraform {
  backend "remote" {
    organization = "avnes"

    workspaces {
      name = "odin-vm"
    }
  }
}
