variable "project_id" {
  description = "The project ID to host the cluster in"
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "kb8s-cluster"
}

variable "env_name" {
  description = "The environment for the GKE cluster"
}

variable "service_account" {
  description = "Service account"
  default = ""
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "us-central1"
}

variable "node_locations" {
  description = "The location to host the cluster in"
  default = "us-central1-a,us-central1-b,us-central1-c,us-central1-f"
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

variable "subnet_ip" {
  description = "Subnet IP"
  default     = "10.10.0.0/16"
}

variable "ip_cidr_range_pods" {
  description = "ip_cidr_range"
  default     = "10.20.0.0/16"
}

variable "ip_cidr_range_services" {
  description = "ip_cidr_range"
  default     = "10.30.0.0/16"
}

variable "storage_member" {
  description = ""
  default     = "gsdenys@gmail.com"
}

variable "storage_location" {
  description = ""
  default     = "US"
}


# Postgresql
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

variable "disk_size_gb" {
  description = "Disk size in GB"
  default = 30
}

variable "preemptible" {
  description = "is preemptible"
  default = true
}


# database
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