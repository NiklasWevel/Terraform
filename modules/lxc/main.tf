# modules/lxc/main.tf
variable "containers" {
  type = map(object({
    vmid     : number
    hostname : string
    size     : string
  }))
}

resource "proxmox_lxc" "ct" {
  for_each      = var.containers
  target_node   = var.target_node
  vmid          = each.value.vmid
  hostname      = each.value.hostname
  ostemplate    = "${var.storage_template}:vztmpl/${var.ubuntu_ver}"
  password      = var.lxc_password

  rootfs {
    storage = var.storage_disk
    size    = each.value.size
  }

  ssh_public_keys = var.ssh_public_keys
  unprivileged    = true
  start           = true

  features {
    fuse    = true
    nesting = true
  }

  hookscript = "${var.storage_template}:snippets/idmap.sh"
}
