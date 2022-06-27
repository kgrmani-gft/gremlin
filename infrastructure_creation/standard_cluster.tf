resource "google_container_cluster" "standard" {
  project = var.project
  name     = var.gke_cluster_name
  location = var.region
  remove_default_node_pool = true
  initial_node_count       = 4
  node_config {
      tags = [var.gke_tags]
  }
  
}  


resource "google_container_node_pool" "primary_preemptible_nodes" {
  project = var.project
  name       = "my-node-pool"
  location   = var.region
  cluster    = google_container_cluster.standard.name
  node_count = 4

  node_config {
    preemptible  = true
    machine_type = var.machine_type

  }
    
  provisioner "local-exec" {
    command = "sh cluster-credentials.sh"
    /* depends_on = [
    google_container_node_pool.primary_preemptible_nodes
  ] */
  }
}


