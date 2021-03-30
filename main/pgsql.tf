resource "random_uuid" "test" {}

resource "google_sql_database_instance" "postgresql" {
  name = "database-${var.env_name}-${random_uuid.test.result}"
  project = var.project_id
  region = var.region
  database_version = var.db_version
  deletion_protection=false
  
  settings {
    tier = var.db_tier
    disk_autoresize = true
    disk_size = 10
    disk_type = "PD_SSD"
    
    
    location_preference {
      zone = "us-central1-a"
    }
   
    maintenance_window {
      day  = "7" # sunday
      hour = "3" # 3am
    }
   
    backup_configuration {
    #   binary_log_enabled = true
      enabled = true
      start_time = "00:00"
    }
   
    ip_configuration {
      ipv4_enabled = "true"
      authorized_networks {
        value = var.db_instance_access_cidr
      }
    }
  }
}

# create database
resource "google_sql_database" "postgresql_db" {
  name = var.db_name
  project = var.project_id
  instance = google_sql_database_instance.postgresql.name
  charset = var.db_charset
  collation = var.db_collation
}

# resource "google_sql_user" "users" {
#   name     = "me"
#   instance = google_sql_database_instance.postgresql.name
#   type     = "CLOUD_IAM_SERVICE_ACCOUNT"
#   project = var.project_id
# }