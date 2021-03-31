variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "k8s-cluster"
}

variable "env_name" {
  description = "The environment for the GKE cluster"
  #default     = "test"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "us-central1"
}

variable "machine_type" {
  description = "The Machine Type"
  default     = "e2-medium"
}

variable "min_node" {
  description = "Minimum number of nodes"
  default     = 1
}

variable "max_node" {
  description = "Maximum number of nodes"
  default     = 2
}

variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
}

variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet"
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}

variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}

# DATABASE
variable "db_version" {
  description = "The version of the database"
  default = "POSTGRES_11"
}

variable "db_tier" {
  description = "The machine tier"
  default = "db-f1-micro"
}

variable "db_instance_access_cidr" {
  description = "The IPv4 CIDR to provide access the database instance"
  default = "0.0.0.0/0"
}

# database settings
variable db_name {
  description = "Name of the default database to create"
  default = "stacklabstest"
}
variable db_charset {
  description = "The charset for the default database"
  default = ""
}
variable db_collation {
  description = "The collation for the default database"
  default = ""
}