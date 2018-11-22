provider "kubernetes" {}

resource "kubernetes_replication_controller" "example2" {
  depends_on = ["data.external.local_install", "null_resource.local_install"]

  metadata {
    name = "terraform-example2"

    labels {
      test = "MyExampleApp2"
    }
  }

  spec {
    selector {
      test = "MyExampleApp2"
    }

    template {
      container {
        image = "nginx:1.7.8"
        name  = "example"

        resources {
          limits {
            cpu    = "0.5"
            memory = "512Mi"
          }

          requests {
            cpu    = "250m"
            memory = "50Mi"
          }
        }
      }
    }
  }
}
