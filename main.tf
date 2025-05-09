# main.tf im Root
module "lxc" {
  source = "./modules/lxc"
  lxc_password = var.lxc_password
  ssh_public_keys = var.ssh_public_keys
  target_node = var.target_node
  storage_template = var.storage_template 
  storage_disk = var.storage_disk
  ubuntu_ver = var.ubuntu_ver
}
