resource "proxmox_lxc" "lanraragi" {
  target_node = "var.target_node
  vmid	      = 11102
  hostname    = "LanRaragi "
  ostemplate  = "${var.storage_template}:vztmpl/${var.ubuntu_ver}"
  password    = var.lxc_password

  rootfs {
    storage = var.storage_disk
    size    = "12G"
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
