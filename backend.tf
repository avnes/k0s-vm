terraform {
  backend "remote" {
    organization = "avnes"

    workspaces {
      name = "valyria-vm-impl"
    }
  }
}
