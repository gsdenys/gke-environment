variable "project_id" {
  description = "The project ID to host the cluster in"
  default = "stacklabs-gsdenys"
}

module "dev_cluster" {
    source     = "./main"
    env_name   = "infra"
    service_account =  "356816732089-compute@developer.gserviceaccount.com"
    project_id = var.project_id
}

# module "staging_cluster" {
#     source     = "./main"
#     env_name   = "staging"
#     project_id = "${var.project_id}"
# }

# module "prod_cluster" {
#     source     = "./main"
#     env_name   = "prod"
#     project_id = "${var.project_id}"
# }