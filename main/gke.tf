module "gke_auth" {
  source = "terraform-google-modules/kubernetes-engine/google//modules/auth"
  depends_on   = [module.gke]
  project_id   = var.project_id
  location     = module.gke.location
  cluster_name = module.gke.name
}

module "gke" {
  source                 = "terraform-google-modules/kubernetes-engine/google//modules/private-cluster"
  project_id             = var.project_id
  name                   = "${var.cluster_name}-${var.env_name}"
  regional               = true
  region                 = var.region
  network                = module.gcp-network.network_name
  subnetwork             = module.gcp-network.subnets_names[0]
  ip_range_pods          = var.ip_range_pods_name
  ip_range_services      = var.ip_range_services_name
  remove_default_node_pool	= true
  node_pools = [
    {
      name                      = "node-pool"
      machine_type              = "${var.machine_type}"
      node_locations            = "us-central1-a,us-central1-b,us-central1-c,us-central1-f"
      min_count                 = var.min_node
      max_count                 = var.max_node
      disk_size_gb              = 30

      preemptible               = true
    },
  ]
}
