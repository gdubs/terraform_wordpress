resource "google_sql_database" "database" {
    name = "gor-wordpress-db"
    instance = google_sql_database_instance.instance.name 
    provider = google.gor-wp-test
}

resource "google_sql_database_instance" "instance" {
    name = "gor-wordpress-db-instance"
    provider = google.gor-wp-test
    region = var.region
    project = var.project
    database_version = "MYSQL_5_7"
    deletion_protection = false
    settings {
        tier = "db-f1-micro"
        disk_size = 10
        disk_type = "PD_SSD"
        ip_configuration {
            ipv4_enabled = true

            authorized_networks {
                value = "0.0.0.0/0"
            }
        }
    }
}

resource "google_sql_user" "users" {
    name = "root"
    instance = google_sql_database_instance.instance.name
    password = "test"
    provider = google.gor-wp-test
    project = var.project
}