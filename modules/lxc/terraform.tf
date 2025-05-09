/*
  resource "proxmox_lxc" "terraform" {
  target_node = "var.target_node
  vmid	      = 10110
  hostname    = "Terraform"
  ostemplate  = "${var.storage_template}:vztmpl/${var.ubuntu_ver}"
  password    = var.lxc_password

  rootfs {
    storage = var.storage_disk
    size    = "8G"
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
*/