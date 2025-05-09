variable "lxc_password" {
  type        = string
  description = "Root password for the LXC container"
  sensitive   = true
}

variable "ssh_public_keys" {
  type        = string
  description = "Public SSH keys to be added to the container"
  sensitive   = true
}

variable "target_node" {
  type        = string
  description = "Name of the target Proxmox node"
}

variable "storage_template" {
  type        = string
  description = "Proxmox storage name where the container template is located"
}

variable "storage_disk" {
  type        = string
  description = "Proxmox storage name for the container's disk"
}

variable "ubuntu_ver" {
  type        = string
  description = "Ubuntu version to be used for the container"
}
