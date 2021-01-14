resource "kubernetes_service" "lb" {
  metadata {
    name = "wordress"
  }
  spec {
    selector = {
      
      app = "wp-frontend"
      
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "LoadBalancer"
  } 
}