terraform {
  required_version = ">= 1.0.0"

  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.14"
    }

    template = {
      source = "hashicorp/template"
      version = "2.2.0"
    }

    tls = {
      source = "hashicorp/tls"
      version = "3.1.0"
    }

    local = {
      source = "hashicorp/local"
      version = "2.2.2"
    }

    random = {
      source = "hashicorp/random"
      version = "3.1.2"
    }
  }
}
