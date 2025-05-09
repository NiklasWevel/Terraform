resource "proxmox_lxc" "deemix" {
  target_node = "var.target_node
  vmid	      = 12107
  hostname    = "Deemix"
  ostemplate  = "${var.storage_template}:vztmpl/${var.ubuntu_ver}"
  password    = var.lxc_password

  rootfs {
    storage = var.storage_disk
    size    = "3G"
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
