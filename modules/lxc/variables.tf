variable "lxc_password" {
  type        = string
  description = "LXC root Passwd"
}

variable "ssh_public_keys" {
  type        = string
  description = "LXC Pub Key"
}

variable "target_node" {
  type        = string
  description = "Proxmox Node Name"
}

variable "storage_template" {
  type        = string
  description = "Proxmox Storage für das Template"
}

variable "storage_disk" {
  type        = string
  description = "Proxmox Storage für die Festplatte"
}

variable "ubuntu_ver" {
  type        = string
  description = "Welche Ubuntu Version soll verwendet werden"
}

