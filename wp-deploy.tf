resource "kubernetes_deployment" "wp" {
  metadata {
    name = "wordpress"
    labels = {
      app = "wp-frontend"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "wp-frontend"
      }
    }
    template {
      metadata {
        labels = {
          app = "wp-frontend"
        }
      }
      spec {
        container {
          image = "wordpress:latest"
          name  = "wordpress"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}
