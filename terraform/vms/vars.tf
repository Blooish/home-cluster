locals {
  cluster_name         = "homelab"
  network_gateway      = "192.168.0.1"
  network_subnet_range = "24"
  vm_starting_vmid     = 500
  ssh_public_keys      = split("\n", data.http.github_keys.response_body)

  vm_definition = [
    {
      type        = "master"
      ip          = "192.168.0.10"
      cores       = 1
      memory      = 2048
      disk_size   = 10
      storage     = "local-lvm"
      storage_ssd = true
      node        = "homelab"
      template    = 9000
    },
    {
      type        = "worker"
      ip          = "192.168.0.20"
      cores       = 1
      memory      = 2048
      disk_size   = 10
      storage     = "local-lvm"
      storage_ssd = true
      node        = "homelab"
      template    = 9000
    },
    {
      type        = "worker"
      ip          = "192.168.0.21"
      cores       = 1
      memory      = 2048
      disk_size   = 10
      storage     = "local-lvm"
      storage_ssd = true
      node        = "homelab"
      template    = 9000
    }
  ]
}
