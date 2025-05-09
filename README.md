# Terraform with Proxmox

This repository documents my Infrastructure as Code (IaC) approach for managing my Proxmox homelab using Terraform.

Proxmox already stores VM and LXC configurations as files, which can be considered a basic form of Infrastructure as Code (IaC).  

For this reason, I use Terraform only to initialize the resources. After initialization, the configuration is handled manually via `.conf` files, which are also pulled from a Git repository.

---

## My Workflow

1. Initialize the LXC container using Terraform  
2. Manually edit the configuration file in `/etc/pve/lxc/<ID>.conf`  
3. Further configure the container using Ansible  

---

## Notes and Limitations

Terraform support for Proxmox has some limitations you need to be aware of:

1. **Authentication:**  
   Some features (e.g., enabling `fuse` or `nesting`) can only be used if you authenticate with `root@pam`. These features are not available when using an API token due to limited permissions, even when using a `root@pam` token.
   If you don’t need these  features, you should switch from user/password authentication to API token authentication for improved security and easier automation.

2. **Immutable Changes:**  
   Terraform can only manage settings that are changeable via the Proxmox Web UI. If you change certain immutable settings (like the LXC password), Terraform will treat the container as needing to be destroyed and recreated. This will result in data loss when destroying the container.

3. **Mount Points:**  
	Due to the limitations mentioned in point 2, traditional folder-to-folder mount points cannot be created with Terraform. 		Mount points created via the Proxmox Web UI will generate a new `.disk` image file on your storage path, rather than  creating a bind mount from one folder to another.
---

## Goals

This setup allows me to:

- Reproducibly create new LXC containers
- Apply minimal manual changes (via direct `.conf` edits)
- Fully automate software provisioning and configuration with Ansible
