# main.tf im Root
  module "lxc" {
  source = "./modules/lxc"
  
containers = {
  10100 = { vmid = 10100, hostname = "wireguard",       size = "5G" }
  10101 = { vmid = 10101, hostname = "adguard",         size = "8G" }
  10102 = { vmid = 10102, hostname = "adguardfallback", size = "8G" }
  10103 = { vmid = 10103, hostname = "gluetun",         size = "5G" }
  10104 = { vmid = 10104, hostname = "caddy",           size = "8G" }
  10105 = { vmid = 10105, hostname = "short",           size = "8G" }
  10106 = { vmid = 10106, hostname = "ntfy",            size = "5G" }
  10107 = { vmid = 10107, hostname = "uptimekuma",      size = "8G" }
  10108 = { vmid = 10108, hostname = "speedtest",       size = "3G" }
  10109 = { vmid = 10109, hostname = "ansible",         size = "8G" }
  10110 = { vmid = 10110, hostname = "terraform",       size = "8G" }
  10111 = { vmid = 10111, hostname = "grafana",         size = "5G" }

  11100 = { vmid = 11100, hostname = "jellyfin",        size = "45G" }
  11101 = { vmid = 11101, hostname = "navidrome",       size = "8G" }
  11102 = { vmid = 11102, hostname = "lanraragi",       size = "27G" }
  11103 = { vmid = 11103, hostname = "handbrake",       size = "10G" }

  12107 = { vmid = 12107, hostname = "deemix",          size = "3G" }
  12108 = { vmid = 12108, hostname = "yt-dlp",          size = "3G" }
  12109 = { vmid = 12109, hostname = "gallery-dl",      size = "3G" }

  13100 = { vmid = 13100, hostname = "homepage",        size = "8G" }
  13101 = { vmid = 13101, hostname = "linkwarden",      size = "10G" }
  13102 = { vmid = 13102, hostname = "wikijs",          size = "5G" }
  13103 = { vmid = 13103, hostname = "paperlessngx",    size = "8G" }
  13104 = { vmid = 13104, hostname = "actualbudget",    size = "8G" }
  13105 = { vmid = 13105, hostname = "gitea",           size = "5G" }
  13106 = { vmid = 13106, hostname = "git",             size = "5G" }

  14100 = { vmid = 14100, hostname = "syncthing",       size = "10G" }
  14101 = { vmid = 14101, hostname = "radicale",        size = "5G" }

  15100 = { vmid = 15100, hostname = "searxng",         size = "8G" }
  15101 = { vmid = 15101, hostname = "thunderbird",     size = "4G" }
  15102 = { vmid = 15102, hostname = "steamfarm",       size = "8G" }
  15103 = { vmid = 15103, hostname = "stirlingpdf",     size = "8G" }
  15104 = { vmid = 15104, hostname = "twitchviewer",    size = "8G" }
  15105 = { vmid = 15105, hostname = "epicclaimer",     size = "8G" }
  15106 = { vmid = 15106, hostname = "changedetection", size = "8G" }

  50100 = { vmid = 50100, hostname = "samba",           size = "8G" }
}

  
  lxc_password = var.lxc_password
  ssh_public_keys = var.ssh_public_keys
  target_node = var.target_node
  storage_template = var.storage_template 
  storage_disk = var.storage_disk
  ubuntu_ver = var.ubuntu_ver
}


